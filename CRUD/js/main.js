var modulo = angular.module('CRUD',[]);
var oi;
modulo.controller('Crescer',['$scope','$filter', function (model,filter){
    let idNovaAula=4;
    let idNovoInstrutor=4;
    model.aulas = [{id:0,nome:'Tester'},
                   {id:1,nome:'Heroísmo'},
                   {id:2,nome:'Poções'},
                   {id:3,nome:'Defesa contra as artes das trevas'}];
    model.instrutores = [{id:0,nome:'Teste',sobrenome:'Tester',idade:22,email:'teste@tester.com.br',dandoAula:true,aula:[0],urlFoto:'img/perfil_padrao.jpg'},
                         {id:1,nome:'Saitama',sobrenome:'',idade:26,email:'opm@heroassociation.jp',dandoAula:false,aula:[],urlFoto:'img/perfil_padrao.jpg'},
                         {id:2,nome:'Toshinori',sobrenome:'Yagi',idade:36,email:'yagi@gmail.jp',dandoAula:true,aula:[1],urlFoto:'img/perfil_padrao.jpg'},
                         {id:3,nome:'Severus',sobrenome:'Snape',idade:38,email:'severus@discipline.uk',dandoAula:true,aula:[2,3],urlFoto:'img/perfil_padrao.jpg'}];
    model.itensComAlteracaoAtiva=[];
    model.aulasAntigas=[];
    model.alteracaoInstrutorIniciada = false;
    model.adicionarAula =function(nomeaula){
        if(model.validaNomeAula(nomeaula)){
            let novaAula={id:idNovaAula,nome:nomeaula};
            idNovaAula++;
            model.aulas.push(novaAula);
            model.nomeaula='';
            alert('Aula criada com sucesso');
        }
    };
    model.stringAulas = function(aulasId){
        if(typeof aulasId!=='undefined'){
            let aulasNomes=[];
            for(let i=0;i<aulasId.length;i++){
                aulasNomes.push(model.pegarNomeAulaPorId(aulasId[i]));
            };
            aulasNomes = filter('orderBy')(aulasNomes, '');
            return aulasNomes.join(', ');
        };   
    };
    model.dandoAulaToString = function(dandoAula){
        if(dandoAula===true){
            return 'Sim';
        }else{
            return 'Não';
        }
    };        
    model.adicionarInstrutor = function(instrutor){
        let instrutorDandoAula;
        if(typeof instrutor.aulas !== 'undefined'){ //Converte o id das aulas para inteiros
            for(let i=0;i<instrutor.aulas.length;i++){
                instrutor.aulas[i]=Number(instrutor.aulas[i]);
            }
        }
        if(instrutor.dandoAula===false){instrutor.aulas=[]};
        if(model.validaInstrutor(instrutor)){
            if(typeof instrutor.urlFoto === 'undefined' || instrutor.urlFoto===""){
                instrutor.urlFoto = 'img/perfil_padrao.jpg';
            }
            let novoInstrutor = {id:idNovoInstrutor,nome: instrutor.nome,sobrenome:instrutor.sobrenome,idade:instrutor.idade,email:instrutor.email,dandoAula:instrutor.dandoAula,aula:instrutor.aulas,urlFoto:instrutor.urlFoto};
            model.instrutores.push(novoInstrutor);
            model.instrutor = {};
            idNovoInstrutor++;
        }
    };
     model.pegarNomeAulaPorId = function(idAula){
        for(aula of model.aulas){
            if(aula.id===idAula){ 
                return aula.nome;
            }
        } 
    };
    model.verificarExistenciaNomeInstrutor = function(nome){
        for(instrutor of model.instrutores){
            if(instrutor.nome.toLowerCase() === nome.toLowerCase()){
                return true;
            }
        }
        return false;
    }
    model.validaNomeAula = function(nome){
        if(typeof nome === 'undefined'){
            alert("Nome inválido! Tente outro.");
            return false;
        }
        if(nome.length<3||nome.length>20){
            alert("Nome inválido! Tente outro.");
            return false;
        }
        for(aula of model.aulas){
            if(aula.nome.toLowerCase() === nome.toLowerCase()){
                alert("Nome já adicionado! Tente outro.");
                return false;
            }
        }
        return true;
    }
    model.validaInstrutor = function (instrutor){
        let instrutorValido = model.validaNomeInstrutor(instrutor.nome) &&  model.validaSobreNomeInstrutor(instrutor.sobrenome) && model.validaIdadeInstrutor(instrutor.idade) && model.validaEmailInstrutor(instrutor.email);
        if(instrutorValido){
            return true;
        };
        return false;
    }
    model.validaNomeInstrutor = function(nome){
        if(typeof nome === 'undefined'){
            alert("Nome inválido! Tente outro.");
            return false;
        }
        if(nome.length<3||nome.length>20){
            alert("Nome inválido! Tente outro.");
            return false;
        }
        for(instrutore of model.instrutores){
            if(instrutore.nome.toLowerCase() === nome.toLowerCase()){
                alert("Nome já adicionado! Tente outro.");
                return false;
            }
        }
        return true;
    }
    model.validaSobreNomeInstrutor =  function(sobrenome){
        if(typeof sobrenome === 'undefined'){
            return true;
        }
        if(sobrenome.length>30){
            alert("Sobrenome muito longo! Tente outro.");
            return false;
        }
        return true;
    }
    model.validaIdadeInstrutor = function(idade){
        if(typeof idade === 'undefined'){
            alert("Idade inválida! Tente denovo.");
            return false;
        }
        if(idade>90){
            alert("Idade inválido! Tente denovo.");
            return false;
        }
        return true;
    }
    model.validaEmailInstrutor = function(email){
        if(typeof email === 'undefined'){
            alert("Email inválido! Tente denovo.");
            return false;
        }
        return true;
    }
    //Módulo Alterar Nome
    model.encontrarIndexItemComAlteracaoAulaAtivada = function (idAula){
      for(let i=0; i<model.itensComAlteracaoAtiva.length;i++){
          if(model.itensComAlteracaoAtiva[i] === idAula){
             return i;
           }
        }
    };
    model.ativarAlteracaoAula = function(idAula){
        model.itensComAlteracaoAtiva.push(idAula);
    };
    model.alterandoAula = function(idAula){
        estaAlterando = typeof model.encontrarIndexItemComAlteracaoAulaAtivada(idAula) !== 'undefined';
        return estaAlterando;
    }
    model.cancelarAlteracaoAula =  function(idAula){
        index = model.encontrarIndexItemComAlteracaoAulaAtivada(idAula);
        model.itensComAlteracaoAtiva.splice(index,1);
    }
    model.salvarAlteracaoAula = function(idAula,novoNome){
        let index = model.encontrarIndexItemComAlteracaoAulaAtivada(idAula);
        if(model.validaNomeAula(novoNome)){
            model.aulas[index].nome = novoNome;
            model.cancelarAlteracaoAula(idAula);
            alert("Alteração realizada com sucesso!");
        }
    }
    //Modulo Alteração Instrutor
    model.pegarIndexInstrutorPorID = function(idInstrutor){
        for(let i=0;i<model.instrutores.length;i++){
            if(model.instrutores[i].id===idInstrutor){
                return i; 
            }
        }
    }
    model.iniciarAlteracaoInstrutor = function(idInstrutor){
        for(instrutor of model.instrutores){
            if(instrutor.id===idInstrutor){
                model.alteracaoInstrutorIniciada = true;
                model.alteracaoInstrutor = angular.copy(instrutor);
                return;
            }
        }
        alert('ID inválido ou não encontrado! Tente outro');
    }
    model.pegarNomeInstrutorPorId = function(idInstrutor){ //Não utilizada
        let index = model.pegarIndexInstrutorPorID(idInstrutor);
        if(typeof model.instrutores[index]!=='undefined'){
            return model.instrutores[index].nome;
        }
    }
    model.cancelarAlteracaoInstrutor = function(idInstrutor){
        model.alteracaoInstrutorIniciada = false;
        model.alteracaoInstrutor = {};
    }
    model.salvarAlteracaoInstrutor = function(alteracaoInstrutor){
        let index = model.pegarIndexInstrutorPorID(alteracaoInstrutor.id);
        if(typeof alteracaoInstrutor.aulas !== 'undefined'){ //Converte o id das aulas para inteiros
            for(let i=0;i<alteracaoInstrutor.aulas.length;i++){
                alteracaoInstrutor.aulas[i]=Number(alteracaoInstrutor.aulas[i]);
            }
        }
        if(model.validaInstrutor(alteracaoInstrutor)){
            if(typeof alteracaoInstrutor.urlFoto === 'undefined' || alteracaoInstrutor.urlFoto===""){
                alteracaoInstrutor.urlFoto = "img/perfil_padrao.jpg";
            }
            let novoInstrutor = {id:alteracaoInstrutor.id,nome:alteracaoInstrutor.nome,sobrenome:alteracaoInstrutor.sobrenome,idade:alteracaoInstrutor.idade,email:alteracaoInstrutor.email,dandoAula:alteracaoInstrutor.dandoAula,aula:alteracaoInstrutor.aulas,urlFoto:alteracaoInstrutor.urlFoto};
            model.instrutores[index] = novoInstrutor;
            model.alteracaoInstrutorIniciada = false;
            console.log(model.instrutores[index]);
            alert('Alteração realizada com sucesso!');
        }
    }
}]);