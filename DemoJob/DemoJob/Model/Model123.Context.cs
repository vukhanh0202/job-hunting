﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class JOBEntities : DbContext
    {
        public JOBEntities()
            : base("name=JOBEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<AccountRole> AccountRoles { get; set; }
        public virtual DbSet<Account> Accounts { get; set; }
        public virtual DbSet<Company> Companies { get; set; }
        public virtual DbSet<Degree> Degrees { get; set; }
        public virtual DbSet<Experience> Experiences { get; set; }
        public virtual DbSet<Job> Jobs { get; set; }
        public virtual DbSet<LanguageSkill> LanguageSkills { get; set; }
        public virtual DbSet<Member> Members { get; set; }
        public virtual DbSet<OfficeSkill> OfficeSkills { get; set; }
        public virtual DbSet<Register> Registers { get; set; }
    }
}
