using AplaudoApi.Dto;
using AplaudoApi.Models;
using AutoMapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Transactions;
using System.Web.Http;
using System.Web.Http.Description;
namespace AplaudoApi.Controllers
{
    public class ConcertsController : ApiController
    {
        private AplaudoDBEntities db = new AplaudoDBEntities();

        // GET: api/Concerts
        //search in about in concerts by about field 
        public IHttpActionResult GetConcerts(string searchtext)
        {
            try
            {
                IList<Concert> listConcerts = db.Concerts.Where(c => c.About.Contains(searchtext)).ToList<Concert>();
                var filteredConcertList = from concertObj in listConcerts
                                          orderby concertObj.Date
                                          select new Concert
                                          {
                                              About = concertObj.About,
                                              Date = concertObj.Date,
                                              ConcertLink = concertObj.ConcertLink,
                                              ConcertId = concertObj.ConcertId
                                          };

                return Json(filteredConcertList);
            }
            catch (Exception ex)
            {
                return Content(HttpStatusCode.BadRequest, ex.Message);
            }
        }
        public IHttpActionResult GetConcertsByEmailAddress(string emailaddress)
        {
            try
            {
                var selectedArtist = db.Artists.SingleOrDefault(x => x.EmailAddress == emailaddress.Trim());

                var concertsListByEmail = from c in db.Concerts
                                          where c.Artists.Any(o => o.ArtistId == selectedArtist.ArtistId)
                                          select new
                                          {
                                              ConcerId=c.ConcertId,
                                              Title=c.ConcertTitle,
                                              About = c.About,
                                              ConcertLink = c.ConcertLink,
                                              Style = db.Styles.FirstOrDefault(st => st.StyleId == c.StyleId).StyleName,
                                              EmailAddress = selectedArtist.EmailAddress
                                          };


                return Json(concertsListByEmail.ToList());
            }

            catch (Exception ex)
            {
                return Content(HttpStatusCode.BadRequest, ex.Message);
            }
        }
        // GET: api/Concerts/5
        [ResponseType(typeof(ConcertDto))]
        public IHttpActionResult GetConcert(long id)
        {
            try
            {

                Concert concert = db.Concerts.Find(id);
                if (concert == null)
                {
                    return NotFound();
                }
                ConcertDto concertOut = Mapper.Map<Concert, ConcertDto>(concert);
                concertOut.Style = db.Styles.Find(concert.StyleId).StyleName;
                concertOut.InstrumentationValue = db.Instrumentations.Find(concert.InstrumentationId).InstrumentationValue;
                concertOut.CountryName = db.Countries.Find(concert.CountryId).CountryName;

                concertOut.ArtistEmails = (from ar in db.Artists
                                           where ar.Concerts.Any(c => c.ConcertId == concertOut.ConcertId)
                                           select new ArtistDto
                                           {
                                               EmailAddress = ar.EmailAddress
                                           }).ToList<ArtistDto>();
                concertOut.InstrumentNames = (from inst in db.Instruments
                                              where inst.Concerts.Any(c => c.ConcertId == concertOut.ConcertId)
                                              select new InstrumentDto
                                              {
                                                  InstrumentName = inst.InstrumentName
                                              }).ToList<InstrumentDto>();



                return Content(HttpStatusCode.OK, concertOut);
            }
            catch (Exception ex)
            {
                return Content(HttpStatusCode.BadRequest, ex.Message);
            }

        }

        // PUT: api/Concerts/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutConcert(ConcertDto concertJson)
        {
            Concert myNewConcert;
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (String.IsNullOrEmpty(concertJson.ConcertId.ToString()) || concertJson.ConcertId == 0 )
            {
                return BadRequest();
            }
            //for a concert object update concert then update artists and insruments 
            try
            {
               
                using (TransactionScope scope = new TransactionScope())
                {
                    //Step 1 update concert 
                    myNewConcert = new Concert()
                    {
                        ConcertId = concertJson.ConcertId,
                        About = concertJson.About,
                        StyleId = (db.Styles.FirstOrDefault(s => s.StyleName.Trim().ToLower() == concertJson.Style.Trim().ToLower())).StyleId,
                        ConcertTitle = concertJson.ConcertTitle,
                        Date = concertJson.Date,
                        ConcertLink = concertJson.ConcertLink,
                        PictureLink = concertJson.PictureLink,
                        ProgrammaLink = concertJson.ProgrammaLink,
                        TeaserLink = concertJson.TeaserLink,
                        CountryId = (db.Countries.FirstOrDefault(c => c.CountryName.ToLower().Trim() == concertJson.CountryName.Trim().ToLower()).CountryId),
                        InstrumentationId = (db.Instrumentations.FirstOrDefault(intsr => intsr.InstrumentationValue.Trim().ToLower() == concertJson.InstrumentationValue.Trim().ToLower()).InstrumentationId)
                    };
                    db.Entry(myNewConcert).State = EntityState.Modified;
                    db.SaveChanges();

                    //Step 2 : Transaction to delete instruments and artists

                    var concetrtsArtistsInstruments = db.Concerts.Include(b => b.Instruments)
                                      .Include(b => b.Artists)
                                      .FirstOrDefault(b => b.ConcertId == concertJson.ConcertId);
                   
                    // Delete artists
                    foreach (var existingChild in concetrtsArtistsInstruments.Artists.ToList())
                    {
                        concetrtsArtistsInstruments.Artists.Remove(existingChild);
                    }
                    //Delete instruments
                    foreach (var existingChild in concetrtsArtistsInstruments.Instruments.ToList())
                    {
                        concetrtsArtistsInstruments.Instruments.Remove(existingChild);
                    }
                    db.SaveChanges();



                    // Step 3 : Transaction to insert them

                    //save artists linked to that concert 
                    foreach (var artistEmails in concertJson.ArtistEmails)
                        (db.Concerts.FirstOrDefault(c => c.ConcertId == myNewConcert.ConcertId)).Artists.Add(db.Artists.SingleOrDefault(ar => ar.EmailAddress == artistEmails.EmailAddress.Trim()));
                    db.SaveChanges();

                    //Save instruments
                    foreach (var instrumentNameValue in concertJson.InstrumentNames)
                    {
                        //get the  instrument Id one by one
                        int instrumentIdDB = (db.Instruments.FirstOrDefault(inst => inst.InstrumentName.Trim().ToLower() == instrumentNameValue.InstrumentName.Trim().ToLower())).InstrumentId;

                        //add each instrument to this particular concert
                        (db.Concerts.FirstOrDefault(c => c.ConcertId == myNewConcert.ConcertId)).Instruments.Add(db.Instruments.SingleOrDefault(inst => inst.InstrumentId == instrumentIdDB));
                    }
                    db.SaveChanges();


                    scope.Complete();
                    
                }


            }

            catch (DbUpdateConcurrencyException)
            {
                if (!ConcertExists(concertJson.ConcertId))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }
            return Content(HttpStatusCode.OK, concertJson);
        }

        // POST: api/Concerts
        [ResponseType(typeof(Concert))]
        public IHttpActionResult PostConcert(ConcertDto concertJson)
        {
            // get list of progamma and list of artists in the concert 
            try
            {
                if (!ModelState.IsValid)
                {
                    return BadRequest(ModelState);
                }
                var myNewConcert = new Concert()
                {
                    About = concertJson.About,
                    StyleId = (db.Styles.FirstOrDefault(s => s.StyleName.Trim().ToLower() == concertJson.Style.Trim().ToLower())).StyleId,
                    ConcertTitle = concertJson.ConcertTitle,
                    Date = concertJson.Date,
                    ConcertLink = concertJson.ConcertLink,
                    PictureLink = concertJson.PictureLink,
                    ProgrammaLink = concertJson.ProgrammaLink,
                    TeaserLink = concertJson.TeaserLink,
                    CountryId = (db.Countries.FirstOrDefault(c => c.CountryName.ToLower().Trim() == concertJson.CountryName.Trim().ToLower()).CountryId),
                    InstrumentationId = (db.Instrumentations.FirstOrDefault(intsr => intsr.InstrumentationValue.Trim().ToLower() == concertJson.InstrumentationValue.Trim().ToLower()).InstrumentationId)
                };

                db.Concerts.Add(myNewConcert);
                db.SaveChanges();

                //save artists linked to that concert 
                foreach (var artistEmails in concertJson.ArtistEmails)
                    (db.Concerts.FirstOrDefault(c => c.ConcertId == myNewConcert.ConcertId)).Artists.Add(db.Artists.SingleOrDefault(ar => ar.EmailAddress == artistEmails.EmailAddress.Trim()));
                db.SaveChanges();

                //Save instruments
                foreach (var instrumentNameValue in concertJson.InstrumentNames)
                {
                    //get the  instrument Id one by one
                    int instrumentIdDB = (db.Instruments.FirstOrDefault(inst => inst.InstrumentName.Trim().ToLower() == instrumentNameValue.InstrumentName.Trim().ToLower())).InstrumentId;

                    //add each instrument to this particular concert
                    (db.Concerts.FirstOrDefault(c => c.ConcertId == myNewConcert.ConcertId)).Instruments.Add(db.Instruments.SingleOrDefault(inst => inst.InstrumentId == instrumentIdDB));
                }
                db.SaveChanges();

                //return Content(HttpStatusCode.Created, "Your concert is created successfully.");
                return Created(new Uri(Request.RequestUri + "/" + myNewConcert.ConcertId),
                    new
                    {
                        About = myNewConcert.About,
                        ConcertId = myNewConcert.ConcertId,
                        ConcertLink = myNewConcert.ConcertLink
                    });
            }
            catch (Exception ex)
            {
                return Content(HttpStatusCode.BadRequest, ex.Message);
            }
        }

        // DELETE: api/Concerts/5
        [ResponseType(typeof(Concert))]
        public IHttpActionResult DeleteConcert(long id)
        {
            Concert concert = db.Concerts.Find(id);
            if (concert == null)
            {
                return NotFound();
            }

            db.Concerts.Remove(concert);
            db.SaveChanges();

            return Ok(concert);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool ConcertExists(long id)
        {
            return db.Concerts.Count(e => e.ConcertId == id) > 0;
        }
    }
}
/*
 * the json object format for concerts
 * {
      
        "About":  "Concert about singing",
        "Style": "pro",
        "Genere":"sing",
        "Date":"12/01/2010",
        "ConcertLink":"http://localhost:50826/api/artists/",
        "PictureLink":"http://localhost:50826/api/artists/",
        "ProgrammaLinks": [{"ProgrammaLink": "http://localhost:50826/api/artists/1"},
            {"ProgrammaLink": "http://localhost:50826/api/artists/2"},
            {"ProgrammaLink": "http://localhost:50826/api/artists/3"}],
        "ArtistEmails": [{"EmailAddress": "par@gmail.com"},
            {"EmailAddress": "rasaa@gmail.com"},
            {"EmailAddress": "Ralyy.MM@gmail.com"}]

 }

 */
