using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Results;
using AplaudoApi.Models;
using AplaudoApi.Dto;

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
                        select new ArtistDto
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
            //Check if the sent object has already a registered email address
            var selectedArtist = db.Artists.SingleOrDefault(a => a.EmailAddress.Trim()== artistObject.EmailAddress.Trim());
            if (selectedArtist != null)
                return Content(HttpStatusCode.Found, "You have already created an account.");
            else
            {
                // encode the password -- to be done
                var keyNew = Helper.GeneratePassword(10);
                var password = Helper.EncodePassword(artistObject.Password, keyNew);
                artistObject.VCode = keyNew;
                artistObject.Password = password;
         
                using (var ctx = new AplaudoDBEntities())
                {
                    ctx.Artists.Add(new Artist()
                    {
                        ArtistFirstName = artistObject.ArtistFirstName,
                        ArtistLastName = artistObject.ArtistLastName,
                        ArtistNickName = artistObject.ArtistNickName,
                        EmailAddress = artistObject.EmailAddress,
                        VCode = artistObject.VCode,
                        Password = artistObject.Password
                    });

                    ctx.SaveChanges();
                }

                return Content(HttpStatusCode.Created, "Your account is created successfully.");
            }
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
                    //Encode the artist password 
                    var hashCode = selectedArtist.VCode;
                    //Password Hashing Process Call Helper Class Method    
                    var encodingPasswordString = Helper.EncodePassword(artistCred.Password, hashCode);
                    if (selectedArtist.Password == encodingPasswordString)
                        return Ok();
                    else
                        return Content(HttpStatusCode.BadRequest, "Wrong user credentials.");
                }
                else
                    return NotFound();
            }
        }
        [Route("api/artists/changepassword")]
        [HttpPut]
        public IHttpActionResult UserChangePassword([FromBody]Artist artistCred)
        {
            //get artist object from db
            using (AplaudoDBEntities ctx = new AplaudoDBEntities())
            {
                //check the user exists
                var selectedArtist = db.Artists.SingleOrDefault(a => a.EmailAddress.Trim() == artistCred.EmailAddress.Trim());
                if (selectedArtist != null)
                {
                    // change old vcode and password to new ones
                    var keyNew = Helper.GeneratePassword(10);
                    var password = Helper.EncodePassword(artistCred.Password, keyNew);
                    selectedArtist.VCode = keyNew;
                    selectedArtist.Password = password;
                    ctx.SaveChanges();

                    return Content(HttpStatusCode.OK, "New password has been updated successfully.");
                }
                else
                    return Content(HttpStatusCode.BadRequest, "Wrong user email address.");
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