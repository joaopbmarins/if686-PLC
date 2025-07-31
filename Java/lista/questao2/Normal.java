package Java.lista.questao2;

public class Normal extends Cliente{
    public Normal(String nome, int mes_cadastro){
        super(nome, mes_cadastro);
        this.tipo = TipoCliente.NORMAL; 
    }

    @Override
    public void addCompra() {
        
    }

    @Override
    protected void addPontos(int qtd, double preco, double bonusVip){
        pontos += (preco / 10)*qtd;
    }
}
