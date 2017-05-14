var series = JSON.parse('[{"titulo":"Stranger Things","anoEstreia":2016,"diretor":["Matt Duffer","Ross Duffer"],"genero":["Suspense","Ficcao Cientifica","Drama"],"elenco":["Winona Ryder","David Harbour","Finn Wolfhard","Millie Bobby Brown","Gaten Matarazzo","Caleb McLaughlin","Natalia Dyer","Charlie Heaton","Cara Buono","Matthew Modine","Noah Schnapp"],"temporadas":1,"numeroEpisodios":8,"distribuidora":"Netflix"},{"titulo":"Game Of Thrones","anoEstreia":2011,"diretor":["David Benioff","D. B. Weiss","Carolyn Strauss","Frank Doelger","Bernadette Caulfield","George R. R. Martin"],"genero":["Fantasia","Drama"],"elenco":["Peter Dinklage","Nikolaj Coster-Waldau","Lena Headey","Emilia Clarke","Kit Harington","Aidan Gillen","Iain Glen  ","Sophie Turner","Maisie Williams","Alfie Allen","Isaac Hempstead Wright"],"temporadas":6,"numeroEpisodios":60,"distribuidora":"HBO"},{"titulo":"The Walking Dead","anoEstreia":2010,"diretor":["Jolly Dale","Caleb Womble","Paul Gadd","Heather Bellson"],"genero":["Terror","Suspense","Apocalipse Zumbi"],"elenco":["Andrew Lincoln","Jon Bernthal","Sarah Wayne Callies","Laurie Holden","Jeffrey DeMunn","Steven Yeun","Chandler Riggs ","Norman Reedus","Lauren Cohan","Danai Gurira","Michael Rooker ","David Morrissey"],"temporadas":7,"numeroEpisodios":99,"distribuidora":"AMC"},{"titulo":"Band of Brothers","anoEstreia":20001,"diretor":["Steven Spielberg","Tom Hanks","Preston Smith","Erik Jendresen","Stephen E. Ambrose"],"genero":["Guerra"],"elenco":["Damian Lewis","Donnie Wahlberg","Ron Livingston","Matthew Settle","Neal McDonough"],"temporadas":1,"numeroEpisodios":10,"distribuidora":"HBO"},{"titulo":"Bernardo The Master of the Wizards","anoEstreia":2017,"diretor":["James Bajczuk","Marcio Tesser","Andre Nunes"],"genero":["Terror","Caos","JavaScript"],"elenco":["Alana Weiss","Alexia Pereira","Bruno Aguiar","Camila Batista","Christopher Michel","Claudia Moura","Deordines Tomazi","Diandra Rocha","Jabel Fontoura","João Silva","Jomar Cardoso","Leonardo Alves","Leonardo Morais","Lucas Damaceno","Lucas Gaspar","Lucas Muller","Luis Robinson","Maico Kley","Mateus Silva","Mathias Ody","Mirela Adam","Rafael Barizon","Rafael Barreto","Tais Silva","William Goncalves"],"temporadas":1,"numeroEpisodios":40,"distribuidora":"CWI"},{"titulo":"10 Days Why","anoEstreia":2010,"diretor":["Brendan Eich"],"genero":["Caos","JavaScript"],"elenco":["Brendan Eich","Bernardo Bosak"],"temporadas":10,"numeroEpisodios":10,"distribuidora":"JS"},{"titulo":"Mr. Robot","anoEstreia":2018,"diretor":["Sam Esmail"],"genero":["Drama","Techno Thriller","Psychological Thriller"],"elenco":["Rami Malek","Carly Chaikin","Portia Doubleday","Martin Wallström","Christian Slater"],"temporadas":2,"numeroEpisodios":22,"distribuidora":"USA Network"},{"titulo":"Narcos","anoEstreia":2015,"diretor":["Paul Eckstein","Mariano Carranco","Tim King","Lorenzo O Brien"],"genero":["Documentario","Crime","Drama"],"elenco":["Wagner Moura","Boyd   Holbrook","Pedro Pascal","Joann Christie","Mauricie Compte","André Mattos","Roberto Urbina","Diego Cataño","Jorge A. Jiménez","Paulina Gaitán","Paulina Garcia"],"temporadas":2,"numeroEpisodios":20,"distribuidora": null},{"titulo":"Westworld","anoEstreia":2016,"diretor":["Athena Wickham"],"genero":["Ficcao Cientifica","Drama","Thriller","Acao","Aventura","Faroeste"],"elenco":["Evan N. Rachel Wood","Thandie U. Newton","Jeffrey N. Wright","James E. Marsden","Ben S. Barnes","Ingrid I. Bolso Berdal","Clifton L. Collins Jr.","Luke L. Hemsworth","Sidse U. Babett Knudsen","Simon M. Quarterman","Rodrigo I. Santoro","Tessa N. Thompson","Shannon A. Woodward","Ed T. Harris","Anthony I. Hopkins"],"temporadas":1,"numeroEpisodios":10,"distribuidora":"HBO"},{"titulo":"Breaking Bad","anoEstreia":2008,"diretor":["Vince Gilligan","Michelle MacLaren","Adam Bernstein","Colin Bucksey","Michael Slovis","Peter Gould"],"genero":["Acao","Suspense","Drama","Crime","Humor Negro"],"elenco":["Bryan Cranston","Anna Gunn","Aaron Paul","Dean Norris","Betsy Brandt","RJ Mitte"],"temporadas":5,"numeroEpisodios":62,"distribuidora":"AMC"}]');

//Para verificar o undefined e a soma com undefined,
//obs caso use delete para remover um campo da série o validador continua considerando está série válida, mesmo que com um campo a menos
//obs² quando uma serie possui numero de episodios indefinidos ela ainda é utilizada na conta da média, considerando assim que essa série possui 0 episódios
//series.push({"titulo":"TesteUndefined","anoEstreia":2014,"diretor":["Tester"],"genero":["Drama","Drama","Terror"],"elenco":["Debug","Error","Undefined"],"temporadas":undefined,"numeroEpisodios":undefined,"distribuidora":"JS"});
console.log(series);
function isObject(a){
    return typeof a === "object" && true;
}
function isNumber(a){
    return typeof a === "number" && true;
}
function isString(a){
    return typeof a === "string" && true;
}
function arrayToString(array,criterio){ /*Transforma um array em uma String conforme critério solicitado*/
  return array.join(criterio);
}
function PropNotUndefined(object, prop){ /*Verifica se a propriedade não está undefined*/
  return typeof object[prop] !== "undefined" && true;
}
function PropNotNull(object, prop){ /*Verifica se a propriedade não é igual a null*/
  return object[prop] !== null && true;
}
var genero = "genero";
var numeroEpisodios = "numeroEpisodios";
var elenco = "elenco";
var diretor = "diretor";
var titulo = "titulo";

/*Exercício 1*/

//delete series[0].distribuidora; //Ativar para verificar a validação de series sem alguma propriedade necessária

function seriesInvalidas(series){
  return  isObject(series) && arrayToString(validadorGeral(series), " - ")
  //Valida se a variavel series é um objeto e se for realiza a validação das series e em seguida converte os
  //titulos das séries inválidas para apenas uma string
}
function dataEstreiaValida(serie){
  let anoAtual = new Date().getFullYear();
  return serie.anoEstreia<=anoAtual && true;
}
function validadorGeral(series){
  let seriesInvalidas = [];
  forPrincipal:
  for(let x = 0; x<series.length; x++){
    for (let i in series[x]) {
     if(!PropNotUndefined(series[x],i) || !PropNotNull(series[x], i) || !dataEstreiaValida(series[x])){
       //Verifica se a serie possui todas as propriedades, se nenhuma dela é nula e depois se a data de Estreia é anterior ou igual ao ano atual
       seriesInvalidas.push(series[x].titulo); //Grava o titulo das séries inválidas
       continue forPrincipal;
     }
    }
  }
 return seriesInvalidas;
}
console.log("Exercicios 1: ",validadorGeral(series));

/*Exercício 2*/

function filtrarSeriesPorAno(series, ano){
    return isObject(series) && isNumber(ano) && filtroDeSeriesPorAno(series, ano);
}
function filtroDeSeriesPorAno(series, ano){
  let seriesFiltradas = [];
  for(let serie of series){
     if(selecaoPorData(serie, ano) !== null) seriesFiltradas.push(selecaoPorData(serie, ano)); //seleciona somente os titulos de series validos
  }
  return seriesFiltradas;
}
function selecaoPorData(serie, ano){
  let serieSelecionada = serie.anoEstreia>=ano;
  if(serieSelecionada){
    return serie.titulo;
  }else{
    return null; //retorna null quando a serie não esta na seleção
  }
}
console.log("Exercicios 2: ",filtrarSeriesPorAno(series, 2017));

/*Exercicio 3*/
function mediaDeEpisodios(series){
  return isObject(series) && calcularMediaDeEpisodios(series);
}
function calcularMediaDeEpisodios(series){
  let media=0;
  for(let serie of series){
    //Soma os valores dos números de episódios, porém antes verifica se o número de episódios não é undefined
    if(PropNotUndefined(serie,numeroEpisodios)) media+=serie.numeroEpisodios;
  }
  return media = media/series.length;
}
console.log("Exercicios 3: ",mediaDeEpisodios(series));

/*Exercicio 4*/
function procurarPorNome(series, nome){
  return isObject(series) && isString(nome) && procuradorPorNome(series, nome);
}
function procuradorPorNome(series, nome){
   for(let serie of series){
    for(let atuante of serie[elenco]){
      if(atuante === nome){return true;}; //retorna true caso encontrar o(a) ator/atriz
    }
   }
   return false; //Se não encontrar ninguém durante o percorrer da lista retorna false
}
console.log("Exercicios 4 (true): ",procurarPorNome(series,"Gaten Matarazzo"));
console.log("Exercicios 4 (false): ",procurarPorNome(series,"Pedro de Alcântara Francisco António João Carlos Xavier de Paula Miguel Rafael Joaquim José Gonzaga Pascoal Cipriano Serafim"))

/*Exercicios 5*/
function mascadaEmSerie(serie){
  return isObject(serie) && mascadaElenco(serie)+mascadaDiretoria(serie);
}
function mascadaElenco(serie){
  return serie[elenco].length*40000;
}
function mascadaDiretoria(serie){
  return serie[diretor].length*100000;
}
console.log("Exercicios 5: ");
for(let i=0; i<series.length; i++){
  console.log("Mascada da série",series[i].titulo,"é:",mascadaEmSerie(series[i]));
}
console.log("----------------------------------------------------------------");
/*Exercicio 6*/
/*A*/
function queroGenero(generoSelecionado) {
  return isString(generoSelecionado) && selecaoPorGenero(generoSelecionado);
}
function selecaoPorGenero(generoSelecionado){
   let selecionados = [];
   for(let serie of series){
        if(temOGenero(serie,generoSelecionado)) selecionados.push(serie.titulo);
   }
   return selecionados;
}
function temOGenero(serie, generoSelecionado){
  for(let generoDaSerie of serie[genero]){
     if(generoDaSerie===generoSelecionado){
       return true;
     }
  }
  return false; //Retorna false quando a série não possue o genero
}
console.log("Exercicios 6.A: ",queroGenero("JavaScript"));
/*B*/
function queroTitulo(tituloSelecionado){
  return isString(tituloSelecionado) && selecaoPorTitulo(tituloSelecionado);
}
function selecaoPorTitulo(tituloSelecionado){
  let selecionados = [];
  for(let serie of series){
    let temOTitulo = serie[titulo].toLowerCase().search(tituloSelecionado.toLowerCase())>=0; //Passa todos para toLowerCasa considerando "Filme === filme"
    if(temOTitulo) selecionados.push(serie.titulo);
  }
  return selecionados;
}
console.log("Exercicios 6.B: ",queroTitulo("The"));

/*Exercicio 7*/
console.log("Exercicios 7: ",);
function creditosIlluminatis(serie){
  if(isObject(serie)){
    console.log(serie.titulo);
    console.log("Diretores: ");
    console.log(arrayToString(listaDiretores(serie),"\n"));
    console.log("Elenco: ");
    console.log(arrayToString(listaElenco(serie), "\n"));
  }else{
    console.log("Série inválida");
  }
}
function listaDiretores(serie){
  let diretores=[];
  for(let diretor of serie.diretor){
    diretores.push(diretor);
  }
  return diretores.sort(sortUltimoNome);
}
function listaElenco(serie){
  let elenco=[];
  for(let ator of serie.elenco){
    elenco.push(ator);
  }
  return elenco.sort(sortUltimoNome);
}
function sortUltimoNome(a,b) {
    let separadorA = a.split(" ");
    let separadorB = b.split(" ");
    let comparadorA = separadorA[separadorA.length-1].toLowerCase();
    let comparadorB = separadorB[separadorB.length-1].toLowerCase();
    return comparadorA < comparadorB ? -1 : comparadorA > comparadorB ? 1 : 0;
};
console.log(creditosIlluminatis(series[0]));
console.log("-----------------------------------",);
/*Exercicio 8*/

function listaElencoNaoOrdenada(serie){
  let elenco=[];
  for(let ator of serie.elenco){
    elenco.push(ator);
  }
  return elenco;
}

function easteregg(series){
  let resposta;
  for(let serie of series){
    resposta = procuradorDeSerieComNomesAbrevidos(listaElencoNaoOrdenada(serie));
    if(resposta.valor === true){
      return "#" + arrayToString(resposta.lista,"");
    }
  }
  return "Nenhuma correspondência foi encontrada";
}
function procuradorDeSerieComNomesAbrevidos(listaElenco){
  let resposta = new Object();
  let lista = [];
  for(let ator of listaElenco){
    if(ator.indexOf(".")>=0){
      resposta.valor = true;
      lista.push(ator.charAt(ator.indexOf(".")-1));
    }else{
      resposta.valor = false;
      lista = [];
      return resposta; //Se algum ator não possuir a abreviação o algoritmo já passa para a proxima serie
    }
  }
  resposta.lista = lista;
  return resposta;
}
console.log("Exercicio 8(EasterEgg): ",easteregg(series));
