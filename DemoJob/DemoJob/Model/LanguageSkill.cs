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
    
    public partial class LanguageSkill
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public LanguageSkill()
        {
            this.Members = new HashSet<Member>();
        }
    
        public int Id { get; set; }
        public Nullable<int> English { get; set; }
        public Nullable<int> French { get; set; }
        public Nullable<int> Russian { get; set; }
        public Nullable<int> Korean { get; set; }
        public Nullable<int> Chinese { get; set; }
        public Nullable<int> Japanese { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Member> Members { get; set; }
    }
}
