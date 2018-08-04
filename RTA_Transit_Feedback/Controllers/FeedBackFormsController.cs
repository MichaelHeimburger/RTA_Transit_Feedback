using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Microsoft.AspNet.Identity;
using Rotativa;
using RTA_Transit_Feedback;

namespace RTA_Transit_Feedback.Controllers
{
    public class FeedBackFormsController : Controller
    {
        private TransitFeedbackAppDBv1Entities db = new TransitFeedbackAppDBv1Entities();

        // GET: FeedBackForms
        public ActionResult Index()
        {
            if (User.IsInRole("Admin"))
            {
            var feedBackForm = db.FeedBackForm.Include(f => f.Batch).Include(f => f.Customers);
            return View(feedBackForm.ToList());
            }
                    return RedirectToAction("Index", "Home");


        }

        // GET: FeedBackForms/Details/5
        public ActionResult Details(int? id)
        {
            if (User.IsInRole("Admin"))
            {
                if (id == null)
                {
                    return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
                }
                FeedBackForm feedBackForm = db.FeedBackForm.Find(id);
                if (feedBackForm == null)
                {
                    return HttpNotFound();
                }
                return View(feedBackForm);
            }
                return RedirectToAction("Index", "Home");
            

        }

        // GET: FeedBackForms/Create
        public ActionResult Create()
        {
            var validationCheck = new ValidationCheck();
            var currentUserId = User.Identity.GetUserId();
            if(currentUserId !=null)
            {

        
                 if (validationCheck.HasCustomerInfo(currentUserId))
                 {
                 ViewBag.BatchID = new SelectList(db.Batch, "BatchID", "TrackingNo");
                 ViewBag.CustomerID = new SelectList(db.Customers, "CustomerID", "FirstName");
                 return View();
                 }
            }
            return RedirectToAction("Index", "Home");

        }

        // POST: FeedBackForms/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "FeedbackID,FeedbackDescription,DateofRide,TimeofRide,RouteName,VehNum,CustomerID,BatchID")] FeedBackForm feedBackForm)
        {
            //customers.Id = User.Identity.GetUserId();
            var x = User.Identity.GetUserId();//gets id of current user logged in
            var y = (from c in db.Customers where c.Id == x select c.CustomerID).ToList();
            feedBackForm.CustomerID = y[0];

            if (ModelState.IsValid)
            {
                db.FeedBackForm.Add(feedBackForm);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            //ViewBag.BatchID = new SelectList(db.Batch, "BatchID", "TrackingNo", feedBackForm.BatchID);
            //ViewBag.CustomerID = new SelectList(db.Customers, "CustomerID", "FirstName", feedBackForm.CustomerID);
            return View(feedBackForm);
        }

        // GET: FeedBackForms/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            FeedBackForm feedBackForm = db.FeedBackForm.Find(id);
            if (feedBackForm == null)
            {
                return HttpNotFound();
            }
            ViewBag.BatchID = new SelectList(db.Batch, "BatchID", "TrackingNo", feedBackForm.BatchID);
            ViewBag.CustomerID = new SelectList(db.Customers, "CustomerID", "FirstName", feedBackForm.CustomerID);
            return View(feedBackForm);
        }

        // POST: FeedBackForms/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "FeedbackID,FeedbackDescription,DateofRide,TimeofRide,RouteName,VehNum,CustomerID,BatchID")] FeedBackForm feedBackForm)
        {
            if (ModelState.IsValid)
            {
                db.Entry(feedBackForm).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.BatchID = new SelectList(db.Batch, "BatchID", "TrackingNo", feedBackForm.BatchID);
            ViewBag.CustomerID = new SelectList(db.Customers, "CustomerID", "FirstName", feedBackForm.CustomerID);
            return View(feedBackForm);
        }

        // GET: FeedBackForms/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            FeedBackForm feedBackForm = db.FeedBackForm.Find(id);
            if (feedBackForm == null)
            {
                return HttpNotFound();
            }
            return View(feedBackForm);
        }

        // POST: FeedBackForms/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            FeedBackForm feedBackForm = db.FeedBackForm.Find(id);
            db.FeedBackForm.Remove(feedBackForm);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        public ActionResult RideHappyOutput(int? id) //* Outputs Ride Happy PDF for specific Feedback ID *//
        {
            if (User.IsInRole("Admin"))
            {
                if (id == null)
                {
                    return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
                }
                FeedBackForm feedBackForm = db.FeedBackForm.Find(id);
                if (feedBackForm == null)
                {
                    return HttpNotFound();
                }
                return new ViewAsPdf ("RideHappyOutput", feedBackForm);
            }
            return RedirectToAction("Index", "Home");

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
