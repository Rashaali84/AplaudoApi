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
    public class InstrumentationsController : ApiController
    {
        private AplaudoDBEntities db = new AplaudoDBEntities();

        // GET: api/Instrumentations
        public IHttpActionResult GetInstrumentations()
        {
            var targetList = db.Instrumentations.Select(x => new InstrumentationDto() { InstrumentationId = x.InstrumentationId, InstrumentationValue = x.InstrumentationValue.Trim() })
                 .ToList();
            return Json(targetList);
        }

        // GET: api/Instrumentations/5
        [ResponseType(typeof(Instrumentation))]
        public IHttpActionResult GetInstrumentation(long id)
        {
            Instrumentation instrumentation = db.Instrumentations.Find(id);
            if (instrumentation == null)
            {
                return NotFound();
            }

            return Ok(instrumentation);
        }

        // PUT: api/Instrumentations/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutInstrumentation(long id, Instrumentation instrumentation)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != instrumentation.InstrumentationId)
            {
                return BadRequest();
            }

            db.Entry(instrumentation).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!InstrumentationExists(id))
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

        // POST: api/Instrumentations
        [ResponseType(typeof(Instrumentation))]
        public IHttpActionResult PostInstrumentation(Instrumentation instrumentation)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.Instrumentations.Add(instrumentation);

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateException)
            {
                if (InstrumentationExists(instrumentation.InstrumentationId))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtRoute("DefaultApi", new { id = instrumentation.InstrumentationId }, instrumentation);
        }

        // DELETE: api/Instrumentations/5
        [ResponseType(typeof(Instrumentation))]
        public IHttpActionResult DeleteInstrumentation(long id)
        {
            Instrumentation instrumentation = db.Instrumentations.Find(id);
            if (instrumentation == null)
            {
                return NotFound();
            }

            db.Instrumentations.Remove(instrumentation);
            db.SaveChanges();

            return Ok(instrumentation);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool InstrumentationExists(long id)
        {
            return db.Instrumentations.Count(e => e.InstrumentationId == id) > 0;
        }
    }
}