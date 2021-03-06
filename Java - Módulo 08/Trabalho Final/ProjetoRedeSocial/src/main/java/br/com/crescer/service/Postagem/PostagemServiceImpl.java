/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.crescer.service.Postagem;

import br.com.crescer.entity.Postagem;
import br.com.crescer.entity.Usuario;
import br.com.crescer.repository.PostagemRepository;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.stereotype.Service;

/**
 *
 * @author joao.silva
 */
@Service
public class PostagemServiceImpl implements PostagemService{
    @Autowired
    PostagemRepository postagemRepository;

    @Override
    public List<Postagem> findAll(Usuario usuario) {
        return (List<Postagem>) postagemRepository.Postagem_findByUsuario(usuario.getId());
    }
    
    public List<Postagem> findAllCurtidasByUsuario(Long idUsuario){
        return postagemRepository.Postagem_findAllCurtidasByUsuario(idUsuario);
    }
    
    @Override
    public Page<Postagem> findPage(Usuario usuario,int page, int size) {
        Page<Postagem> postagens = postagemRepository.Postagem_findByUsuario(usuario.getId(), new PageRequest(page, size, new Sort(Sort.Direction.DESC, "dataPostagem")));
        List<Postagem> postagensCurtidas = postagemRepository.Postagem_findAllCurtidasByUsuario(usuario.getPerfil().getId());
        for(Postagem p : postagens){
            for(Postagem pc : postagensCurtidas){
                if(p.getId().longValue() == pc.getId().longValue()){
                    p.setCurtida(Boolean.TRUE);
                    break;
                }else{
                    p.setCurtida(Boolean.FALSE);
                }
            }
        }
        return postagens;
    }
    @Override
    public Postagem save(Postagem postagem) {
        postagem.setData(new Date());
        return postagemRepository.save(postagem);
    }

    @Override
    public void delete(Postagem postagem) {
        postagemRepository.delete(postagem);
    }

    @Override
    public Postagem findOne(Long id) {
        return postagemRepository.findOne(id);          
    }
}
