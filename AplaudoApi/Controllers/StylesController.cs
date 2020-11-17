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
    public class StylesController : ApiController
    {
        private AplaudoDBEntities db = new AplaudoDBEntities();

        // GET: api/Styles
        public IHttpActionResult GetStyles()
        {
            var targetList = db.Styles
                             .Select(x => new StyleDto() { StyleId = x.StyleId , StyleName=x.StyleName })
                             .ToList();
            return Json(targetList);
            
        }

        // GET: api/Styles/5
        [ResponseType(typeof(Style))]
        public IHttpActionResult GetStyle(int id)
        {
            Style style = db.Styles.Find(id);
            if (style == null)
            {
                return NotFound();
            }

            return Ok(style);
        }

        // PUT: api/Styles/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutStyle(int id, Style style)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != style.StyleId)
            {
                return BadRequest();
            }

            db.Entry(style).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!StyleExists(id))
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

        // POST: api/Styles
        [ResponseType(typeof(Style))]
        public IHttpActionResult PostStyle(Style style)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.Styles.Add(style);

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateException)
            {
                if (StyleExists(style.StyleId))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtRoute("DefaultApi", new { id = style.StyleId }, style);
        }

        // DELETE: api/Styles/5
        [ResponseType(typeof(Style))]
        public IHttpActionResult DeleteStyle(int id)
        {
            Style style = db.Styles.Find(id);
            if (style == null)
            {
                return NotFound();
            }

            db.Styles.Remove(style);
            db.SaveChanges();

            return Ok(style);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool StyleExists(int id)
        {
            return db.Styles.Count(e => e.StyleId == id) > 0;
        }
    }
}