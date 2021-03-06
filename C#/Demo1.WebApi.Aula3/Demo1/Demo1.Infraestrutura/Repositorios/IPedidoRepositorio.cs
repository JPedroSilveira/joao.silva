﻿using Demo1.Dominio.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Demo1.Infraestrutura.Repositorios
{
    interface IPedidoRepositorio
    {
        void Alterar(Pedido pedido);
        void Criar(Pedido pedido);
        void Excluir(int id);
        List<Pedido> Listar();
        Pedido Obter(int id);
    }
}
