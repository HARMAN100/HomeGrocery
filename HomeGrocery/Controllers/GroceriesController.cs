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
using HomeGrocery.Models;

namespace HomeGrocery.Controllers
{
    public class GroceriesController : ApiController
    {
        private HomeGroceryEntities db = new HomeGroceryEntities();

        // GET: api/Groceries
        public IQueryable<Grocery> GetGroceries()
        {
            return db.Groceries;
        }

        // GET: api/Groceries/5
        [ResponseType(typeof(Grocery))]
        public IHttpActionResult GetGrocery(int id)
        {
            Grocery grocery = db.Groceries.Find(id);
            if (grocery == null)
            {
                return NotFound();
            }

            return Ok(grocery);
        }

        // PUT: api/Groceries/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutGrocery(int id, Grocery grocery)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != grocery.ID)
            {
                return BadRequest();
            }

            db.Entry(grocery).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!GroceryExists(id))
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

        // POST: api/Groceries
        [ResponseType(typeof(Grocery))]
        public IHttpActionResult PostGrocery(Grocery grocery)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.Groceries.Add(grocery);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = grocery.ID }, grocery);
        }

        // DELETE: api/Groceries/5
        [ResponseType(typeof(Grocery))]
        public IHttpActionResult DeleteGrocery(int id)
        {
            Grocery grocery = db.Groceries.Find(id);
            if (grocery == null)
            {
                return NotFound();
            }

            db.Groceries.Remove(grocery);
            db.SaveChanges();

            return Ok(grocery);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool GroceryExists(int id)
        {
            return db.Groceries.Count(e => e.ID == id) > 0;
        }
    }
}