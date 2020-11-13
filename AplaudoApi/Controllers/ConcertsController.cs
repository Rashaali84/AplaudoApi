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

namespace AplaudoApi.Controllers
{
    public class ConcertsController : ApiController
    {
        private AplaudoDBEntities db = new AplaudoDBEntities();

        // GET: api/Concerts
        public IQueryable<Concert> GetConcerts()
        {
            return db.Concerts;
        }

        // GET: api/Concerts/5
        [ResponseType(typeof(Concert))]
        public IHttpActionResult GetConcert(long id)
        {
            Concert concert = db.Concerts.Find(id);
            if (concert == null)
            {
                return NotFound();
            }

            return Ok(concert);
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
        public IHttpActionResult PostConcert(ConcertDTO concertJson)
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
                return Content(HttpStatusCode.Created, "Your concert is created successfully.");
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
