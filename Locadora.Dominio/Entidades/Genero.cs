using System;

namespace Locadora.Dominio.Entidades
{
    public class Genero : Entidade
    {
        public string Nome { get; set; }

        public DateTime DataCriacao { get; set; }

        public bool Ativo { get; set; }
    }
}
