using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using DTSOInterviewers.Models;

namespace DTSOInterviewers.Controllers
{
    public class PositionsController : Controller
    {
        private DEV_InterviewersEntities db = new DEV_InterviewersEntities();

        // GET: Positions
        public ActionResult Index()
        {
            
            var positions = db.Positions.Include(p => p.Competency);
            return View(positions.ToList());
        }

        // GET: Positions/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Position position = db.Positions.Find(id);
            if (position == null)
            {
                return HttpNotFound();
            }           
            
            return View(position);
        }

        // GET: Positions/Create
        public ActionResult Create()
        {
            ViewBag.IdCompentecy = new SelectList(db.Competencies, "IdCompetency", "Description");
            ViewBag.IdSkillPrimary = new SelectList(db.Skills, "IdSkill", "Description");
            ViewBag.IdSkillSecondary = new SelectList(db.Skills, "IdSkill", "Description");
            ViewBag.IdSkillOptional = new SelectList(db.Skills, "IdSkill", "Description");
            //ViewBag.IdSkillOptional = new SelectList(db.Interviewers, "IdInterviewer", "IdSkill");
            return View();
        }

        // POST: Positions/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IdPosition,Description,Project,IdCompentecy,IdSkillPrimary,IdSkillSecondary,IdSkillOptional")] Position position)
        {
            if (ModelState.IsValid)
            {
                db.Positions.Add(position);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.IdCompentecy = new SelectList(db.Competencies, "IdCompetency", "Description", position.IdCompentecy);
            return View(position);
        }

        // GET: Positions/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Position position = db.Positions.Find(id);
            if (position == null)
            {
                return HttpNotFound();
            }
            ViewBag.IdCompentecy = new SelectList(db.Competencies, "IdCompetency", "Description", position.IdCompentecy);
            ViewBag.IdSkillPrimary = new SelectList(db.Skills, "IdSkill", "Description", position.IdSkillPrimary);
            ViewBag.IdSkillSecondary = new SelectList(db.Skills, "IdSkill", "Description", position.IdSkillSecondary);
            ViewBag.IdSkillOptional = new SelectList(db.Skills, "IdSkill", "Description", position.IdSkillOptional);
            return View(position);
        }

        // POST: Positions/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IdPosition,Description,Project,IdCompentecy,IdSkillPrimary,IdSkillSecondary,IdSkillOptional")] Position position)
        {
            if (ModelState.IsValid)
            {
                db.Entry(position).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.IdCompentecy = new SelectList(db.Competencies, "IdCompetency", "Description", position.IdCompentecy);           
            return View(position);
        }

        // GET: Positions/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Position position = db.Positions.Find(id);
            if (position == null)
            {
                return HttpNotFound();
            }
            return View(position);
        }

        // POST: Positions/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Position position = db.Positions.Find(id);
            db.Positions.Remove(position);
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
