package Java.lista.questao2;

public class VIP extends Cliente{
    public VIP(String nome,int mes_cadastro){
        super(nome, mes_cadastro);
        this.tipo = TipoCliente.VIP; 

    }

    @Override
    public void addCompra() {
        
    }

    @Override
    protected void addPontos(int qtd, double preco, double bonusVip){
        pontos += Math.ceil((1 + bonusVip) * ((preco / 10)*qtd));
    }
}
