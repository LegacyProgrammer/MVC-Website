﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace FinleySiebert.DBL.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class StageBpvDataModelContainer : DbContext
    {
        public StageBpvDataModelContainer()
            : base("name=StageBpvDataModelContainer")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Permission> Permission { get; set; }
        public virtual DbSet<Role> Role { get; set; }
        public virtual DbSet<User> User { get; set; }
        public virtual DbSet<ProfilePage> ProfilePage { get; set; }
        public virtual DbSet<Education> Education { get; set; }
        public virtual DbSet<School> School { get; set; }
        public virtual DbSet<Group> Group { get; set; }
        public virtual DbSet<Internship> Internship { get; set; }
    }
}
