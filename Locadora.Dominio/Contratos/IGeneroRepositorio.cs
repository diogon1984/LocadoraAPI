using Locadora.Dominio.Entidades;

namespace Locadora.Dominio.Contratos
{
    public interface IGeneroRepositorio : IBaseRepositorio<Genero>
    {
        bool Valido(int generoId);
    }
}
