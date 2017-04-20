import java.util.ArrayList;
import java.util.stream.Collectors;

public class ListaSaints{
    private ArrayList<Saint> lista = new ArrayList<Saint>();;
    public ListaSaints(){}
    public void adicionar(Saint saint){
        this.lista.add(saint);
    }
    public void adicionar(ArrayList<Saint> listaSaint){
        this.lista.addAll(listaSaint);
    }
    public Saint get(int indice){
        return this.lista.get(indice);
    }
    public ArrayList<Saint> todos(){
        return this.lista;
    }
    public void remover(Saint saint){
        this.lista.remove(saint);
    }
    public int getTamanho(){
        return this.lista.size();
    }
    public Saint buscarPorNome(String nome){
        /*
        for(Saint saint : this.lista){
            if(saint.getNome().equals(nome)){
                return saint;
            }
        }
        return null;
        *///Método alternativo (válido em java 8 +)
        return this.lista.stream()
            .filter(s -> s.getNome().equals(nome))
            .findFirst()
            .orElse(null);
    }
    public ArrayList<Saint> buscarPorCategoria(Categoria categoria){
        return (ArrayList<Saint>)this.lista.stream()
           .filter(s -> s.getArmadura().getCategoria()==categoria)
           .collect(Collectors.toList());
        
    }
    public ArrayList<Saint> buscarPorStatus(Status status){
        ArrayList<Saint> retorno = new ArrayList<Saint>();
        for(Saint saint : lista){
            if(saint.getStatus() == status){
                retorno.add(saint);
            }
        }
        return retorno;
    }
    public Saint getSaintMaiorVida(){
        Saint saintMaiorVida=null;
        double maior = 0;
        for(Saint saint : lista){
            if(saint.getVida() > maior){
                saintMaiorVida = saint;
                maior=saint.getVida();
            }
        }
        return saintMaiorVida;
    }
    public Saint getSaintMenorVida(){
        Saint saintMenorVida=null;
        double menor = 999999999;
        for(Saint saint : lista){
            if(saint.getVida() < menor){
                saintMenorVida = saint;
                menor = saint.getVida();
            }
        }
        return saintMenorVida;
    }
    public void ordenar(){ //Ordem Ascendente
        boolean posicoesSendoTrocadas=true;
        do{
           posicoesSendoTrocadas=false;
           for(int i =0; i<this.lista.size()-1;i++){
               Saint atual = this.lista.get(i);
               Saint proximo = this.lista.get(i+1);
               boolean precisaTrocar= atual.getVida()>proximo.getVida();
               if(precisaTrocar){
                  this.lista.set(i,proximo);
                  this.lista.set(i+1,atual);
                  posicoesSendoTrocadas=true;
               }
           }
        }while(posicoesSendoTrocadas);
    }
    //ORDENACAO POR PARAMETRO TIPOORDENACAO
    public void ordenar(TipoOrdenacao tipoOrdenacao){
        boolean ascendente = tipoOrdenacao==TipoOrdenacao.ASCENDENTE;
        if(ascendente){
            ordenar();
        }else{
            boolean posicoesSendoTrocadas=true;
            do{
                posicoesSendoTrocadas=false;
                for(int i =0; i<this.lista.size()-1;i++){
                    Saint atual = this.lista.get(i);
                    Saint proximo = this.lista.get(i+1);
                    boolean precisaTrocar= atual.getVida()<proximo.getVida();
                    if(precisaTrocar){
                        this.lista.set(i,proximo);
                        this.lista.set(i+1,atual);
                        posicoesSendoTrocadas=true;
                    }       
                }
            }while(posicoesSendoTrocadas);
        }
    }
    public ListaSaints unir(ListaSaints listaSaints){
        ListaSaints resultado = new ListaSaints();
        resultado.todos().addAll(this.lista);
        resultado.todos().addAll(listaSaints.todos());
        return resultado;
    }
    public ListaSaints diff(ListaSaints listaSaints){
        ListaSaints retorno = new ListaSaints();
        ArrayList<Saint> resultado = new ArrayList<Saint>();
        resultado = this.lista;
        resultado.removeAll(listaSaints.todos());
        retorno.adicionar(resultado);
        return retorno;
    }
    public ListaSaints intersec(ListaSaints listaSaints){
        ListaSaints retorno = new ListaSaints();
        ArrayList<Saint> resultado = new ArrayList<Saint>();
        resultado = this.lista;
        resultado.retainAll(listaSaints.todos());
        retorno.adicionar(resultado);
        return retorno;
    }
    public String getCSV(){
        String quebraLinha = System.lineSeparator();
        String retorno="";
        for(Saint saint : this.lista){
           if(saint!=null){
            retorno+=saint.getNome()+","+saint.getVida()+","+saint.getArmadura().getConstelacao().getNome()+","+saint.getArmadura().getCategoria()+","+saint.getStatus()+","+saint.getGenero()+","+saint.getArmaduraVestida()+quebraLinha;
           }
        }
        return retorno;
    }
}