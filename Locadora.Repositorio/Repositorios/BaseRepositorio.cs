using Locadora.Dominio.Contratos;
using Locadora.Repositorio.Contexto;
using System.Collections.Generic;
using System.Linq;

namespace Locadora.Repositorio.Repositorios
{
    public class BaseRepositorio<TEntity> : IBaseRepositorio<TEntity> where TEntity : class
    {

        protected readonly LocadoraContexto Contexto;


        public BaseRepositorio(LocadoraContexto locadoraContexto)
        {
            Contexto = locadoraContexto;
        }

        public void Adicionar(TEntity entity)
        {
            Contexto.Set<TEntity>().Add(entity);
            Contexto.SaveChanges();
        }

        public void Atualizar(TEntity entity)
        {
            Contexto.Set<TEntity>().Update(entity);
            Contexto.SaveChanges();
        }

        public TEntity ObterPorId(int id)
        {
            return Contexto.Set<TEntity>().Find(id);
        }

        public IEnumerable<TEntity> ObterTodos()
        {
            return Contexto.Set<TEntity>().ToList();
        }

        public void Remover(TEntity entity)
        {
            Contexto.Remove(entity);
            Contexto.SaveChanges();
        }

        public void RemoverSelecionados(IEnumerable<TEntity> entities)
        {
            Contexto.RemoveRange(entities);
            Contexto.SaveChanges();
        }

        public void Dispose()
        {
            Contexto.Dispose();
        }
    }
}
