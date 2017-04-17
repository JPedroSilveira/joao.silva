public class OuroSaint extends Saint{
    public OuroSaint(String nome, Armadura armadura) throws Exception{
        super(nome, armadura);
        this.qtSentidosDespertados = 7; 
        String constelacao = armadura.getConstelacao();
        if(!constelacao.equals("Áries")
            && !constelacao.equals("Touro")
            && !constelacao.equals("Gêmeos")
            && !constelacao.equals("Câncer")
            && !constelacao.equals("Virgem")
            && !constelacao.equals("Leão")
            && !constelacao.equals("Libra")
            && !constelacao.equals("Escorpião")
            && !constelacao.equals("Sagitário")
            && !constelacao.equals("Capricórnio")
            && !constelacao.equals("Aquário")
            && !constelacao.equals("Peixes")){
               //ERRO
               throw new Exception("Constelação inválida");
        }
    }
}