﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DTSOInterviewers.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class DEV_InterviewersEntities : DbContext
    {
        public DEV_InterviewersEntities()
            : base("name=DEV_InterviewersEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Competency> Competencies { get; set; }
        public virtual DbSet<Interviewer> Interviewers { get; set; }
        public virtual DbSet<Position> Positions { get; set; }
        public virtual DbSet<Skill> Skills { get; set; }
    }
}
