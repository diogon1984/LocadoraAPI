using Locadora.Dominio.Entidades;
using Locadora.Repositorio.Config;
using Microsoft.EntityFrameworkCore;

namespace Locadora.Repositorio.Contexto
{
    public class LocadoraContexto : DbContext
    {
        public DbSet<Filme> Filme { get; set; }
        public DbSet<Genero> Genero { get; set; }
        public DbSet<Locacao> Locacao { get; set; }
        //public DbSet<LocacaoFilme> LocacaoFilme { get; set; }

        public LocadoraContexto(DbContextOptions options) : base(options)
        {
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.ApplyConfiguration(new FilmeConfiguration());
            modelBuilder.ApplyConfiguration(new GeneroConfiguration());
            modelBuilder.ApplyConfiguration(new LocacaoConfiguration());

            base.OnModelCreating(modelBuilder);
        }
    }
}
