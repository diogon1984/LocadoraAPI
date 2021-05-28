using Locadora.Dominio.Contratos;
using Locadora.Dominio.Entidades;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;

namespace LocadoraAPI.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class FilmeController : Controller
    {
        private readonly IFilmeRepositorio _filmeRepositorio;
        private readonly IGeneroRepositorio _generoRepositorio;

        public FilmeController(IFilmeRepositorio filmeRepositorio, IGeneroRepositorio generoRepositorio)
        {
            _filmeRepositorio = filmeRepositorio;
            _generoRepositorio = generoRepositorio;
        }

        [HttpGet]
        public IEnumerable<Filme> ObterTodos()
        {
            return _filmeRepositorio.ObterTodos();
        }

        [HttpPost]
        public IActionResult Post([FromBody] Filme filme)
        {
            try
            {
                if(! _generoRepositorio.Valido(filme.GeneroId))
                    return BadRequest("Genero inválido!");

                if (filme.Id > 0)
                {   
                    _filmeRepositorio.Atualizar(filme);
                }
                else
                {   
                    _filmeRepositorio.Adicionar(filme);
                }

                return Json(_filmeRepositorio.ObterTodos());
            }
            catch (Exception ex)
            {
                return BadRequest(ex.ToString());
            }
        }

        [HttpPost("Deletar")]
        public IActionResult DeletarSelecionados([FromBody] IEnumerable<Filme> filmes)
        {
            try
            {
                _filmeRepositorio.RemoverSelecionados(filmes);
                return Json(_filmeRepositorio.ObterTodos());

            }
            catch (Exception ex)
            {
                return BadRequest(ex.ToString());
            }
        }
    }
}
