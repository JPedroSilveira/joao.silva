/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.crescer.repository;

import br.com.crescer.entity.Cliente;
import org.springframework.data.repository.PagingAndSortingRepository;

/**
 *
 * @author jpedr
 */
public interface ClienteRepository extends PagingAndSortingRepository<Cliente, Long>{
    
}
