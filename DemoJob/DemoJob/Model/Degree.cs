//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DemoJob.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class Degree
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Degree()
        {
            this.Members = new HashSet<Member>();
        }
    
        public int Id { get; set; }
        public string SchoolTrain { get; set; }
        public string FacultyTrain { get; set; }
        public string Diploma { get; set; }
        public string MajorTrain { get; set; }
        public string Ranked { get; set; }
        public string TimeBegin { get; set; }
        public string TimeEnd { get; set; }
        public string MoreInfo { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Member> Members { get; set; }
    }
}
