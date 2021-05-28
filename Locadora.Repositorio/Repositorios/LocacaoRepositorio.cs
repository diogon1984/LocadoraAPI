using Locadora.Dominio.Contratos;
using Locadora.Dominio.Entidades;
using Locadora.Repositorio.Contexto;

namespace Locadora.Repositorio.Repositorios
{
    public class LocacaoRepositorio : BaseRepositorio<Locacao>, ILocacaoRepositorio
    {
        public LocacaoRepositorio(LocadoraContexto locadoraContexto) : base(locadoraContexto)
        {
        }
    }
}
