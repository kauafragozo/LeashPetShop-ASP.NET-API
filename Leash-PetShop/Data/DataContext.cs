using Microsoft.Extensions.Configuration;
using Microsoft.EntityFrameworkCore;
using Npgsql.EntityFrameworkCore.PostgreSQL;
using Leash_PetShop.Models;
namespace Leash_PetShop.Data
{
    public class DataContext(IConfiguration config) : DbContext
    {
        private readonly IConfiguration _config = config;

        public DbSet<Pacientes> Pacientes { get; set; }
        public DbSet<Pets> Pets { get; set; }
        public DbSet<Usuarios> Usuarios { get; set; }
        public DbSet<Roles> Roles { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                optionsBuilder.UseNpgsql(_config.GetConnectionString("DefaultConnection"), optionsBuilder => optionsBuilder.EnableRetryOnFailure());
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Pacientes>(entity =>
            {
                entity.ToTable("Pacientes");
                entity.HasKey(p => p.Id);
            });

            modelBuilder.Entity<Pets>(entity =>
            {
                entity.ToTable("Pets");
                entity.HasKey(p => p.Id);
                entity.HasOne(p => p.Dono)
                .WithMany(d => d.Pets)
                .HasForeignKey(p => p.Id);
                
            });

            modelBuilder.Entity<Usuarios>(entity =>
            {
                entity.ToTable("Usuarios");
                entity.HasKey(p => p.Id);
                entity.HasOne(u => u.Role)
                .WithMany(r => r.Usuarios)
                .HasForeignKey(u => u.UserRoleId);
                });

            modelBuilder.Entity<Roles>(entity =>
            {
                entity.ToTable("Roles");
                entity.HasKey(p => p.Id);
            });
        }



    }
}
