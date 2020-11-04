using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Results;
using System.Web.Mvc;
using AplaudoApi.Models;


namespace AplaudoApi.Controllers
{
    public class ArtistsController : ApiController
    {
        //here we are the entites directly from the ef this is not recommended we should use DTO viewmodels
        private AplaudoDBEntities db = new AplaudoDBEntities();
        // GET api/Artists
        
        public IHttpActionResult Get()
        {
            var artists = db.Artists;
            //return  Ok<IEnumerable<Aritst>>(db.Aritsts.ToList<Aritst>());
            return Json(artists.ToList<Artist>());
         
        }

        // GET api/Artists/5
        public IHttpActionResult Get(int id)

        {
            var selectedArtist = db.Artists.SingleOrDefault(a => a.ArtistId == id);
            return Json(selectedArtist);

        }

        // POST api/Artists
        public IHttpActionResult Post([FromBody]Artist artistObject)
        {
            using (var ctx = new AplaudoDBEntities())
            {
                ctx.Artists.Add(new Artist()
                {
                    ArtistFirstName = artistObject.ArtistFirstName
                });

                ctx.SaveChanges();
            }

            return Ok();
        }

        // PUT api/Artists/5
        public IHttpActionResult Put(int id, [FromBody]Artist artistObject)
        {
            using (var ctx = new AplaudoDBEntities())
            {
                var selectedArtist = db.Artists.Where(a => a.ArtistId == artistObject.ArtistId).FirstOrDefault<Artist>();
                if (selectedArtist != null)
                {
                    selectedArtist.ArtistFirstName = artistObject.ArtistFirstName;
                    ctx.SaveChanges();
                }
                else
                {
                    return NotFound();
                }
            }

            return Ok();



        }

        // DELETE api/Artists/5
        public IHttpActionResult Delete(int id)
        {
            var selectedArtist = db.Artists.SingleOrDefault(a => a.ArtistId == id);

            if (selectedArtist == null)
            {
                return NotFound(); // Returns a NotFoundResult
            }
            else
            {
                db.Artists.Remove(selectedArtist);
                return Ok();  // Returns an Ok NegotiatedContentResult
            }
            
        }
    }
}