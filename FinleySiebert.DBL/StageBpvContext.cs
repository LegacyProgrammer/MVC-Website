using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNet.Identity.EntityFramework;
using System.Data.Entity;
using System.Data.Entity.ModelConfiguration.Conventions;
using FinleySiebert.DBL.Models;

namespace FinleySiebert.DBL
{
    public class StageBpvContext : DbContext
    {
        public StageBpvContext(string connectionString) : base(connectionString)
        {

        }

        public DbSet<User> Users { get; set; }
        public DbSet<Role> Roles { get; set; }
        public DbSet<Group> Groups { get; set; }
        public DbSet<Education> Educations { get; set; }
        public DbSet<Internship> Internships { get; set; }
        public DbSet<Permission> Permissions { get; set; }
        public DbSet<School> Schools { get; set; }
        public DbSet<ProfilePage> ProfilePages { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Conventions.Remove<PluralizingTableNameConvention>();
        }
    }
}
