using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Description;
using AplaudoApi.Models;
using AplaudoApi;
using AplaudoApi.Dto;
using AutoMapper;
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
                                       Date = concertObj.Date ,
                                       ConcertLink=concertObj.ConcertLink,
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
                                select new {
                                    About = c.About,
                                    ConcertLink=c.ConcertLink,
                                    Style=db.Styles.FirstOrDefault(st=>st.StyleId == c.StyleId).StyleName,
                                    EmailAddress=selectedArtist.EmailAddress
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
                concertOut.Genere = db.Generes.Find(concert.GenereId).GenreName;
                concertOut.ArtistEmails = (from ar in db.Artists
                                           where ar.Concerts.Any(c => c.ConcertId == concertOut.ConcertId)
                                           select new ArtistDto
                                           {
                                               EmailAddress = ar.EmailAddress
                                           }).ToList<ArtistDto>();
                                          ;
                concertOut.ProgrammaLinks = (from pro in db.Programmas
                                                  where pro.Concerts.Any(c => c.ConcertId == concertOut.ConcertId)
                                             select new ProgrammaDto
                                             {
                                                 ProgrammaLink = pro.ProgrammaLink
                                             }).ToList<ProgrammaDto>();


                return Content(HttpStatusCode.OK, concertOut);
            }
            catch(Exception ex)
            {
                return Content(HttpStatusCode.BadRequest, ex.Message);
            }
               
        }

        // PUT: api/Concerts/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutConcert(long id, Concert concert)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != concert.ConcertId)
            {
                return BadRequest();
            }

            db.Entry(concert).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!ConcertExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return StatusCode(HttpStatusCode.NoContent);
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
                    StyleId = (db.Styles.FirstOrDefault(s => s.StyleName == concertJson.Style)).StyleId,
                    GenereId = (db.Generes.FirstOrDefault(s => s.GenreName == concertJson.Genere)).GenreId,
                    Date = concertJson.Date,
                    ConcertLink = concertJson.ConcertLink,
                    PictureLink = concertJson.PictureLink
                };

                db.Concerts.Add(myNewConcert);
                db.SaveChanges();

                //save artists linked to that concert 
                foreach (var artistEmails in concertJson.ArtistEmails)
                    (db.Concerts.FirstOrDefault(c => c.ConcertId == myNewConcert.ConcertId)).Artists.Add(db.Artists.SingleOrDefault(ar => ar.EmailAddress == artistEmails.EmailAddress.Trim()));
                db.SaveChanges();

                //save programma 
                foreach (var programmaValue in concertJson.ProgrammaLinks)
                {
                    var programmaInserted = new Programma()
                    {
                        ProgrammaLink = programmaValue.ProgrammaLink.Trim()
                    };
                    db.Programmas.Add(programmaInserted);
                    db.SaveChanges();
                    //add programma to the concerts
                    (db.Concerts.FirstOrDefault(c => c.ConcertId == myNewConcert.ConcertId)).Programmas.Add(db.Programmas.SingleOrDefault(prog => prog.ProgrammaId == programmaInserted.ProgrammaId));
                }
                db.SaveChanges();
                //return Content(HttpStatusCode.Created, "Your concert is created successfully.");
                return Created(new Uri(Request.RequestUri + "/" + myNewConcert.ConcertId), 
                    new { About=myNewConcert.About,
                          ConcertId=myNewConcert.ConcertId,
                          ConcertLink=myNewConcert.ConcertLink});
            }
            catch(Exception ex)
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
