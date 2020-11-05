using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Results;
using AplaudoApi.Models;


namespace AplaudoApi.Controllers
{
    public class ArtistsController : ApiController
    {
        //here we are the entites directly from the ef this is not recommended we should use DTO viewmodels
        //DB First Approach using dara model
        private AplaudoDBEntities db = new AplaudoDBEntities();
        // GET api/Artists

        public IHttpActionResult Get()

        {
            var query = from ar in db.Artists.ToList<Artist>()
                        orderby ar.ArtistFirstName 
                        select new Artist
                        {
                            ArtistFirstName = ar.ArtistFirstName,
                            ArtistLastName = ar.ArtistLastName,
                            ArtistNickName = ar.ArtistNickName,
                            ArtistId = ar.ArtistId

                        };
            return Json(query);

        }
        // GET api/Artists/5
        public IHttpActionResult Get(int id)

        {
            var selectedArtist = db.Artists.SingleOrDefault(a => a.ArtistId == id);
            if (selectedArtist != null)
                return Json(selectedArtist);
            else
                return NotFound();
;
        }

        // POST api/Artists
        public IHttpActionResult Post([FromBody]Artist artistObject)
        {
            using (var ctx = new AplaudoDBEntities())
            {
                ctx.Artists.Add(new Artist()
                {
                    ArtistFirstName = artistObject.ArtistFirstName,
                    ArtistLastName=artistObject.ArtistLastName,
                    ArtistNickName=artistObject.ArtistNickName,
                    EmailAddress=artistObject.EmailAddress,
                    Password=artistObject.Password
                });

                ctx.SaveChanges();
            }

            return Ok();
        }
        [Route("api/artists/userlogin")]
        [HttpPost]
        public IHttpActionResult UserLogin([FromBody]Artist artistCred)
        {
            using (AplaudoDBEntities ctx = new AplaudoDBEntities())
            {
                //check the user exists
                var selectedArtist = db.Artists.SingleOrDefault(a => a.EmailAddress.Trim() == artistCred.EmailAddress.Trim());
                if (selectedArtist != null)
                {
                    if (selectedArtist.Password == artistCred.Password)
                        return Ok();
                    else
                        return NotFound();
                }
                else
                    return NotFound();
            }
        }
        // PUT api/Artists/5
        public IHttpActionResult Put([FromBody]Artist artistObject)
        {
            using (AplaudoDBEntities ctx = new AplaudoDBEntities())
            {
                var selectedArtist = ctx.Artists.Where(a => a.ArtistId == artistObject.ArtistId).FirstOrDefault<Artist>();
                if (selectedArtist != null)
                {
                    selectedArtist.ArtistFirstName = artistObject.ArtistFirstName;
                    selectedArtist.ArtistLastName = artistObject.ArtistLastName;
                    selectedArtist.ArtistNickName = artistObject.ArtistNickName;
                    selectedArtist.EmailAddress = artistObject.EmailAddress;
                    selectedArtist.Password = artistObject.Password;
                   
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
                db.SaveChanges();
                return Ok();  // Returns an Ok NegotiatedContentResult
            }
            
        }
    }
}