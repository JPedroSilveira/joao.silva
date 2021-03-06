﻿using System;
using System.Collections.Generic;
using System.Security.Cryptography;
using System.Text;
using System.Text.RegularExpressions;

namespace ProdutoraCrescer.Dominio.Entidades
{
    public class Usuario
    {

        public int Id { get; private set; }
        public string Nome { get; private set; }
        public string Senha { get; private set; }
        public string Email { get; private set; }
        public string Permissao { get; private set; }
        public List<string> Mensagens { get; private set; }

        protected Usuario() { Mensagens = new List<string>(); }

        public Usuario(string nome, string senha, string email, string cargo)
        {
            Id = 0;
            Nome = nome;
            Email = email;
            Permissao = cargo;
            if (!string.IsNullOrWhiteSpace(senha))
                Senha = CriptografarSenha(senha);

            Mensagens = new List<string>();
        }

        public bool Validar()
        {
            Mensagens.Clear();

            if (string.IsNullOrWhiteSpace(Nome) || Nome.Length > 100)
            {
                Mensagens.Add("Nome é inválido.");
            }

            if (string.IsNullOrWhiteSpace(Senha))
            {
                Mensagens.Add("Senha inválida.");
            }

            if (string.IsNullOrWhiteSpace(Email) || EmailInvalido() || Email.Length > 100)
            {
                Mensagens.Add("Email é inválido.");
            }

            if (string.IsNullOrWhiteSpace(Permissao) || Permissao.Length > 100)
            {
                Mensagens.Add("Permissao é inválida.");
            }

            return Mensagens.Count == 0;
        }

        private bool EmailInvalido()
        {
            Regex rg = new Regex(@"^[A-Za-z0-9](([_\.\-]?[a-zA-Z0-9]+)*)@([A-Za-z0-9]+)(([\.\-]?[a-zA-Z0-9]+)*)\.([A-Za-z]{2,})$");

            if (rg.IsMatch(Email))
            {
                return false;
            }
            return true;
        }

        private string CriptografarSenha(string senha)
        {
            MD5 md5 = MD5.Create();
            byte[] inputBytes = Encoding.Default.GetBytes(Email + senha);
            byte[] hash = md5.ComputeHash(inputBytes);
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < hash.Length; i++)
                sb.Append(hash[i].ToString("x2"));

            return sb.ToString();
        }

        public bool ValidarSenha(string senha)
        {
            return CriptografarSenha(senha) == Senha;
        }
    }
}
