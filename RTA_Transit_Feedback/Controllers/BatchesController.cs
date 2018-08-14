using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Rotativa;
using Rotativa.Options;
using RTA_Transit_Feedback;

namespace RTA_Transit_Feedback.Controllers
{
    public class BatchesController : Controller
    {
        private TransitFeedbackAppDBv1Entities1 db = new TransitFeedbackAppDBv1Entities1();

        // GET: Batches
        public ActionResult Index()
        {
            if(User.IsInRole("Admin"))
            {
            return View(db.Batch.ToList());
            }
            return RedirectToAction("Index", "Home");
        }
        public ActionResult PrintBatchAction(int? id)
        {
           if(User.IsInRole("Admin"))
            {
                var batchedList = (from a in db.FeedBackForm where a.BatchID == id select a).OrderByDescending(p => p.BatchID).ToList();
                return new ViewAsPdf("PrintBatch", batchedList)
                {
                    PageOrientation = Orientation.Portrait,
                    //PageWidth = 88.9,
                    //PageHeight = 152.4,
                    PageMargins = new Margins(0, 0, 0, 0),
                    CustomSwitches = "--disable-smart-shrinking"
                };
            }
            return RedirectToAction("Index", "Home");
        }
        public ActionResult PrintBatch(List<FeedBackForm> batchedList)
        {
                return View(batchedList);
        }
        // GET: Batches/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Batch batch = db.Batch.Find(id);
            if (batch == null)
            {
                return HttpNotFound();
            }
            return View(batch);
        }

        //public ActionResult BatchCount()
        //{
        //    var feedBackForms = (from a in db.FeedBackForm where a.BatchID == a.BatchID select a).OrderByDescending(p => p.BatchID).ToList();
        //    return View();
        //}

        //// GET: Batches/Create
        //public ActionResult Create()
        //{
        //    return View();
        //}

        //// POST: Batches/Create
        //// To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        //// more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        //[HttpPost]
        //[ValidateAntiForgeryToken]
        //public ActionResult Create([Bind(Include = "BatchID,TrackingNo")] Batch batch)
        //{
        //    if (ModelState.IsValid)
        //    {
        //        db.Batch.Add(batch);
        //        db.SaveChanges();
        //        return RedirectToAction("Index");
        //    }

        //    return View(batch);
        //}

        // GET: Batches/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Batch batch = db.Batch.Find(id);
            if (batch == null)
            {
                return HttpNotFound();
            }
            return View(batch);
        }

        // POST: Batches/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "BatchID,TrackingNo")] Batch batch)
        {
            if (ModelState.IsValid)
            {
                db.Entry(batch).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(batch);
        }

        //// GET: Batches/Delete/5
        //public ActionResult Delete(int? id)
        //{
        //    if (id == null)
        //    {
        //        return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
        //    }
        //    Batch batch = db.Batch.Find(id);
        //    if (batch == null)
        //    {
        //        return HttpNotFound();
        //    }
        //    return View(batch);
        //}

        //// POST: Batches/Delete/5
        //[HttpPost, ActionName("Delete")]
        //[ValidateAntiForgeryToken]
        //public ActionResult DeleteConfirmed(int id)
        //{
        //    Batch batch = db.Batch.Find(id);
        //    db.Batch.Remove(batch);
        //    db.SaveChanges();
        //    return RedirectToAction("Index");
        //}

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
