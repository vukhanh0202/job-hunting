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
    
    public partial class OfficeSkill
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public OfficeSkill()
        {
            this.Members = new HashSet<Member>();
        }
    
        public int Id { get; set; }
        public Nullable<int> Word { get; set; }
        public Nullable<int> Excel { get; set; }
        public Nullable<int> PowerPoint { get; set; }
        public Nullable<int> Outlook { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Member> Members { get; set; }
    }
}