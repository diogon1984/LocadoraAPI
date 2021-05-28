using Locadora.Dominio.Contratos;
using Locadora.Dominio.Entidades;
using Locadora.Repositorio.Contexto;
using System.Linq;

namespace Locadora.Repositorio.Repositorios
{
    public class GeneroRepositorio : BaseRepositorio<Genero>, IGeneroRepositorio
    {
        public GeneroRepositorio(LocadoraContexto locadoraContexto) : base(locadoraContexto)
        {
        }

        public bool Valido(int generoId)
        {
            var genero = Contexto.Genero.SingleOrDefault(g => g.Id == generoId);

            if (genero != null)
                return genero.Ativo;

            return false;
        }
    }
}