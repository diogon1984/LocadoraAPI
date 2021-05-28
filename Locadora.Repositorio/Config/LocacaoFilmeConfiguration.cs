using Locadora.Dominio.Entidades;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Locadora.Repositorio.Config
{
    public class LocacaoFilmeConfiguration : IEntityTypeConfiguration<LocacaoFilme>
    {
        public void Configure(EntityTypeBuilder<LocacaoFilme> builder)
        {
            builder.HasNoKey();
        }
    }
}
