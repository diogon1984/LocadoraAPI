using Locadora.Dominio.Contratos;
using Locadora.Dominio.Entidades;
using Locadora.Repositorio.Contexto;
using System.Linq;

namespace Locadora.Repositorio.Repositorios
{
    public class FilmeRepositorio : BaseRepositorio<Filme>, IFilmeRepositorio
    {
        public FilmeRepositorio(LocadoraContexto locadoraContexto) : base(locadoraContexto)
        {   
        }

        public Filme ObterPorNome(string nome)
        {
            return Contexto.Filme.FirstOrDefault(f => f.Nome.Contains(nome));
        }
    }
}
