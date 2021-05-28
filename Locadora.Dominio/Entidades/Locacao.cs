using System;
using System.Collections.Generic;

namespace Locadora.Dominio.Entidades
{
    public class Locacao : Entidade
    {
        //public List<LocacaoFilme> Filmes { get; set; }

        public string CpfCliente { get; set; }

        public DateTime DataLocacao { get; set; }
    }
}
