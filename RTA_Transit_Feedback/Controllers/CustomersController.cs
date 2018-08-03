using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Microsoft.AspNet.Identity;
using RTA_Transit_Feedback;

namespace RTA_Transit_Feedback.Controllers
{
    public class CustomersController : Controller
    {
        private TransitFeedbackAppDBv1Entities db = new TransitFeedbackAppDBv1Entities();

        // GET: Customers
        //public ActionResult Index()
        //{
        //    var customers = db.Customers.Include(c => c.state);
        //    return View(customers.ToList());
        //}

        // GET: Customers/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Customers customers = db.Customers.Find(id);
            if (customers == null)
            {
                return HttpNotFound();
            }
            return View(customers);
        }

        // GET: Customers/Create
        public ActionResult Create()
        {
            var validationCheck = new ValidationCheck();
            var currentUserId = User.Identity.GetUserId();
            if (currentUserId != null)
            {
                if (validationCheck.HasCustomerInfo(currentUserId) == false)
                {
                    ViewBag.stateID = new SelectList(db.state, "stateID", "stateCode");
                    return View();
                }
            }
            return RedirectToAction("Index", "Home");
        }

        // POST: Customers/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "CustomerID,FirstName,LastName,AddressL1,AddressL2,City,stateID,PhoneNum,Id,Zip")] Customers customers)
        {
            customers.Id = User.Identity.GetUserId();
            if (ModelState.IsValid)
            {
                db.Customers.Add(customers);
                db.SaveChanges();
                return RedirectToAction("Create","FeedBackForms");
            }

            //ViewBag.stateID = new SelectList(db.state, "stateID", "stateCode", customers.stateID);
            return RedirectToAction("Create", "FeedBackForms");
        }

        // GET: Customers/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Customers customers = db.Customers.Find(id);
            if (customers == null)
            {
                return HttpNotFound();
            }
            ViewBag.stateID = new SelectList(db.state, "stateID", "stateCode", customers.stateID);
            return View(customers);
        }

        // POST: Customers/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "CustomerID,FirstName,LastName,AddressL1,AddressL2,City,stateID,PhoneNum,Id,Zip")] Customers customers)
        {
            if (ModelState.IsValid)
            {
                db.Entry(customers).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.stateID = new SelectList(db.state, "stateID", "stateCode", customers.stateID);
            return RedirectToAction("Create", "FeedBackForms");
        }

        // GET: Customers/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Customers customers = db.Customers.Find(id);
            if (customers == null)
            {
                return HttpNotFound();
            }
            return View(customers);
        }

        // POST: Customers/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Customers customers = db.Customers.Find(id);
            db.Customers.Remove(customers);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
