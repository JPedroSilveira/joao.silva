﻿using CWI.EditoraCresccer.Entidades;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CWI.EditoraCresccer.Repositorios
{
    public class AutorRepositorio : IDisposable
    {
        private Contexto contexto = new Contexto();

        public List<Autor> ObterTodos()
        {

            return contexto.Autores.ToList();
        }
        public Autor ObterPorId(int id)
        {
            Autor autor = contexto.Autores.FirstOrDefault(x => x.Id == id);
            contexto.Autores.Add(autor);
            contexto.SaveChanges();
            return autor;
        }
        public void Criar(Autor autor)
        {
            contexto.Autores.Add(autor);
            contexto.SaveChanges();
        }
        public void Remover(int autorId)
        {
            Autor autor = contexto.Autores.FirstOrDefault(x => x.Id == autorId);
            if (autor != null)
            {
                contexto.Autores.Remove(autor);
                contexto.SaveChanges();
            }
        }
        public Autor Modificar(int id, Autor autor)
        {
            contexto.Entry(autor).State = EntityState.Modified;
            contexto.SaveChanges();
            return contexto.Autores.FirstOrDefault(x => x.Id == id);
        }
        public void Dispose()
        {
            contexto.Dispose();
        }
    }
}
