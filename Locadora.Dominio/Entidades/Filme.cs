using System;

namespace Locadora.Dominio.Entidades
{
    public class Filme : Entidade
    {
        public string Nome { get; set; }

        public DateTime DataCriacao { get; set; } = DateTime.Now;

        public bool Ativo { get; set; }

        public int GeneroId { get; set; }
    }
}
