//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class Interviewer
    {
        public short IdInterviewer { get; set; }
        public string Name { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public string Seniority { get; set; }
        public string Availability { get; set; }
        public bool IsActive { get; set; }
        public bool IsCertified { get; set; }
        public byte IdCompetency { get; set; }
    }
}
