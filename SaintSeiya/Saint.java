public class Saint
{
    private String nome;
    private Armadura armadura;
    private Genero genero = Genero.NAO_INFORMADO;
    private StatusDeVida statusDeVida = StatusDeVida.VIVO; 
    private boolean armaduraVestida;
    private double vida = 100.0;
    
    public Saint(String nome, Armadura armadura){
       this.nome = nome;
       this.armadura = armadura;
    }
    //ARMADURA
    public void vestirArmadura(){
        this.armaduraVestida = true;
    }
    public boolean getArmaduraVestida(){
         return this.armaduraVestida;
    }
    //GENERO
    public Genero getGenero(){
        return this.genero;
    }
    public void setGenero(Genero genero){
        this.genero=genero;
    }
    //STATUS DE VIDA
    public StatusDeVida getStatusDeVida(){
        return this.statusDeVida;
    }
    public void setStatusDeVida(StatusDeVida statusDeVida){
        this.statusDeVida = statusDeVida;
    }
    //VIDA
    public double getVida(){
        return this.vida;
    }
    public void perderVida(double vidaPerdida){
        this.vida = this.vida - vidaPerdida;
    }
}
