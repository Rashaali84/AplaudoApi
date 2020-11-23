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
            ArtistDto selectedArtist= new ArtistDto();
            var artistObject = db.Artists.SingleOrDefault(a => a.ArtistId == id);
            if (artistObject != null)
            {
                selectedArtist.ArtistFirstName = artistObject.ArtistFirstName;
                selectedArtist.ArtistLastName = artistObject.ArtistLastName;
                selectedArtist.ArtistNickName = artistObject.ArtistNickName;
                selectedArtist.EmailAddress = artistObject.EmailAddress;
                selectedArtist.Bio = artistObject.Bio;
                selectedArtist.YouTube = artistObject.YouTube;
                selectedArtist.iTunes = artistObject.iTunes;
                selectedArtist.LinkedIn = artistObject.LinkedIn;
                selectedArtist.Spotify = artistObject.Spotify;
                selectedArtist.WebSite = artistObject.Website;
                selectedArtist.PhotoLink = artistObject.PhotoLink;
                selectedArtist.CountryName = db.Countries.FirstOrDefault(x => x.CountryId == artistObject.CountryId).CountryName ;
                var artistInstrumentsStyles = db.Artists.Include(ar => ar.Instruments)
                                                         .Include(ar => ar.Styles)
                                                         .FirstOrDefault(ar => ar.ArtistId == artistObject.ArtistId);
                // Styles and instruments for that artists 
                IList<StyleDto> listStyles = new List<StyleDto>();
               
                foreach (var existingChild in artistInstrumentsStyles.Styles.ToList())
                {
                    StyleDto styleDtoObj = new StyleDto();
                    styleDtoObj.StyleName = existingChild.StyleName.ToString();
                    styleDtoObj.StyleId = existingChild.StyleId;
                    listStyles.Add(styleDtoObj);
                }
                selectedArtist.StyleNames = listStyles;

                // instruments
                IList<InstrumentDto> listInstruments = new List<InstrumentDto>();
                foreach (var existingChild in artistInstrumentsStyles.Instruments.ToList())
                {
                    InstrumentDto instDto = new InstrumentDto();
                    instDto.InstrumentName = existingChild.InstrumentName;
                    listInstruments.Add(instDto);
                    
                }
                selectedArtist.InstrumentNames = listInstruments;

                return Content(HttpStatusCode.OK, selectedArtist);
            }
            else
                return NotFound();
;
        }
        public IHttpActionResult Get(string emailAddress)
        {
            var artistRequested = db.Artists.SingleOrDefault(a => a.EmailAddress.Trim().ToLower() == emailAddress.Trim().ToLower());
            if (artistRequested != null)
            {
                artistRequested.EmailAddress = null;
                artistRequested.Password = null;
                artistRequested.VCode = null;
                return Json(artistRequested);
            }
            else
                return NotFound();

        }

        // POST api/Artists
        public IHttpActionResult Post([FromBody]ArtistDto artistObject)
        {
            try
            {
                //Check if the sent object has already a registered email address
                var selectedArtist = db.Artists.SingleOrDefault(a => a.EmailAddress.Trim() == artistObject.EmailAddress.Trim());
                if (selectedArtist != null)
                    return Content(HttpStatusCode.Found, "You have already created an account.");
                else
                {
                    // encode the password -- to be done
                    var keyNew = Helper.GeneratePassword(10);
                    var password = Helper.EncodePassword(artistObject.Password, keyNew);
                    artistObject.VCode = keyNew;
                    artistObject.Password = password;
                    using (TransactionScope scope = new TransactionScope())
                    {
                        using (var ctx = new AplaudoDBEntities())
                        {
                            var myNewArtist = new Artist()
                            {
                                ArtistFirstName = artistObject.ArtistFirstName,
                                ArtistLastName = artistObject.ArtistLastName,
                                ArtistNickName = artistObject.ArtistNickName,
                                EmailAddress = artistObject.EmailAddress.Trim(),
                                Bio = artistObject.Bio,
                                PhotoLink = artistObject.PhotoLink,
                                Spotify = artistObject.Spotify,
                                YouTube = artistObject.YouTube,
                                LinkedIn = artistObject.LinkedIn,
                                iTunes = artistObject.iTunes,
                                SoundCloud = artistObject.SoundCloud,
                                Website = artistObject.WebSite,
                                CountryId = ctx.Countries.FirstOrDefault(c => c.CountryName == artistObject.CountryName).CountryId,
                                VCode = artistObject.VCode,
                                Password = artistObject.Password
                            };
                            ctx.Artists.Add(myNewArtist);
                            ctx.SaveChanges();
                            //Now add instruments and styles 
                            if (artistObject != null && artistObject.InstrumentNames != null)
                            {
                                foreach (var instrumentNameValue in artistObject.InstrumentNames)
                                {
                                    //get the  instrument Id one by one
                                    int instrumentIdDB = (db.Instruments.FirstOrDefault(inst => inst.InstrumentName.Trim().ToLower() == instrumentNameValue.InstrumentName.Trim().ToLower())).InstrumentId;

                                    //add each instrument to this particular concert
                                    (db.Artists.FirstOrDefault(c => c.ArtistId == myNewArtist.ArtistId)).Instruments.Add(db.Instruments.SingleOrDefault(inst => inst.InstrumentId == instrumentIdDB));
                                }

                                db.SaveChanges();
                            }
                            //Insert styles names per user
                            if (artistObject != null && artistObject.StyleNames != null)
                            {
                                foreach (var styleValue in artistObject.StyleNames)
                                {
                                    //get the  instrument Id one by one
                                    int styleIDDB = (db.Styles.FirstOrDefault(st => st.StyleName.Trim().ToLower() == styleValue.StyleName.Trim().ToLower())).StyleId;

                                    //add each instrument to this particular concert
                                    (db.Artists.FirstOrDefault(c => c.ArtistId == myNewArtist.ArtistId)).Styles.Add(db.Styles.SingleOrDefault(st => st.StyleId == styleIDDB));
                                }
                                db.SaveChanges();
                            }
                        }
                        scope.Complete();
                    }

                    return Content(HttpStatusCode.Created, "Your account is created successfully.");
                }
            }
            catch (Exception ex)
            {
                return Content(HttpStatusCode.BadRequest, ex.Message);
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
        public IHttpActionResult Put([FromBody]ArtistDto artistObject)
        {
            try
            {
                using (TransactionScope scope = new TransactionScope())
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
                            selectedArtist.Bio = artistObject.Bio;
                            selectedArtist.YouTube = artistObject.YouTube;
                            selectedArtist.iTunes = artistObject.iTunes;
                            selectedArtist.LinkedIn = artistObject.LinkedIn;
                            selectedArtist.Spotify = artistObject.Spotify;
                            selectedArtist.Website = artistObject.WebSite;
                            selectedArtist.PhotoLink = artistObject.PhotoLink;
                            selectedArtist.CountryId = ctx.Countries.FirstOrDefault(x => x.CountryName == artistObject.CountryName).CountryId;

                            // encode the password -- to be done
                            var keyNew = Helper.GeneratePassword(10);
                            var password = Helper.EncodePassword(artistObject.Password, keyNew);
                            artistObject.VCode = keyNew;
                            artistObject.Password = password;



                            ctx.SaveChanges();
                            //update styles and instruments first delete then insert
                            var artistInstrumentsStyles = ctx.Artists.Include(ar => ar.Instruments)
                                                          .Include(ar => ar.Styles)
                                                          .FirstOrDefault(ar => ar.ArtistId == artistObject.ArtistId);
                            //Delete Styles and instruments for that artists 
                            foreach (var existingChild in artistInstrumentsStyles.Styles.ToList())
                            {
                                artistInstrumentsStyles.Styles.Remove(existingChild);
                            }
                            //Delete instruments
                            foreach (var existingChild in artistInstrumentsStyles.Instruments.ToList())
                            {
                                artistInstrumentsStyles.Instruments.Remove(existingChild);
                            }
                            db.SaveChanges();


                            // Now add the new ones 

                            //Now add instruments and styles 
                            foreach (var instrumentNameValue in artistObject.InstrumentNames)
                            {
                                //get the  instrument Id one by one
                                int instrumentIdDB = (db.Instruments.FirstOrDefault(inst => inst.InstrumentName.Trim().ToLower() == instrumentNameValue.InstrumentName.Trim().ToLower())).InstrumentId;

                                //add each instrument to this particular concert
                                (db.Artists.FirstOrDefault(c => c.ArtistId == artistObject.ArtistId)).Instruments.Add(db.Instruments.SingleOrDefault(inst => inst.InstrumentId == instrumentIdDB));
                            }
                            db.SaveChanges();
                            foreach (var styleValue in artistObject.StyleNames)
                            {
                                //get the  instrument Id one by one
                                int styleIDDB = (db.Styles.FirstOrDefault(st => st.StyleName.Trim().ToLower() == styleValue.StyleName.Trim().ToLower())).StyleId;

                                //add each instrument to this particular concert
                                (db.Artists.FirstOrDefault(c => c.ArtistId == artistObject.ArtistId)).Styles.Add(db.Styles.SingleOrDefault(st => st.StyleId == styleIDDB));
                            }
                            db.SaveChanges();

                        }
                        else
                        {
                            return NotFound();
                        }
                    }
                    scope.Complete();


                }
            }
            catch (Exception ex)
            {
                return Content(HttpStatusCode.BadRequest, ex.Message);
            }
            return Content(HttpStatusCode.OK, artistObject);
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