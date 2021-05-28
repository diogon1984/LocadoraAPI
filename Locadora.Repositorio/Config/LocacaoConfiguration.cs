using Locadora.Dominio.Entidades;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Locadora.Repositorio.Config
{
    public class LocacaoConfiguration : IEntityTypeConfiguration<Locacao>
    {
        public void Configure(EntityTypeBuilder<Locacao> builder)
        {
            builder.HasKey(l => l.Id);

            builder
                .Property(l => l.CpfCliente)
                .IsRequired()
                .HasMaxLength(14);

            builder
                .Property(l => l.DataLocacao)
                .IsRequired();

            //builder
            //    .HasMany(l => l.Filmes)
            //    .WithOne(lf => lf.Locacao)
            //    .HasForeignKey(lf => lf.FilmeId);
        }
    }
}
