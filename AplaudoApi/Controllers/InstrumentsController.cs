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
using AplaudoApi.Dto;
namespace AplaudoApi.Controllers
{
    public class InstrumentsController : ApiController
    {
        private AplaudoDBEntities db = new AplaudoDBEntities();

        // GET: api/Instruments
        public IHttpActionResult GetInstruments()
        {
            var targetList = db.Instruments.Select(x => new InstrumentDto { InstrumentName = x.InstrumentName })
                             .ToList();
            return Json(targetList);
        }

        // GET: api/Instruments/5
        [ResponseType(typeof(Instrument))]
        public IHttpActionResult GetInstrument(int id)
        {
            Instrument instrument = db.Instruments.Find(id);
            if (instrument == null)
            {
                return NotFound();
            }

            return Ok(instrument);
        }

        // PUT: api/Instruments/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutInstrument(int id, Instrument instrument)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != instrument.InstrumentId)
            {
                return BadRequest();
            }

            db.Entry(instrument).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!InstrumentExists(id))
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

        // POST: api/Instruments
        [ResponseType(typeof(Instrument))]
        public IHttpActionResult PostInstrument(Instrument instrument)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.Instruments.Add(instrument);

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateException)
            {
                if (InstrumentExists(instrument.InstrumentId))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtRoute("DefaultApi", new { id = instrument.InstrumentId }, instrument);
        }

        // DELETE: api/Instruments/5
        [ResponseType(typeof(Instrument))]
        public IHttpActionResult DeleteInstrument(int id)
        {
            Instrument instrument = db.Instruments.Find(id);
            if (instrument == null)
            {
                return NotFound();
            }

            db.Instruments.Remove(instrument);
            db.SaveChanges();

            return Ok(instrument);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool InstrumentExists(int id)
        {
            return db.Instruments.Count(e => e.InstrumentId == id) > 0;
        }
    }
}