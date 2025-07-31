package Java.lista.questao2;

public class VIP extends Cliente{
    public VIP(String nome,int mes_cadastro){
        super(nome, mes_cadastro);
        this.tipo = TipoCliente.VIP; 

    }

    @Override
    protected void addPontos(int qtd, double preco, double bonusVip){
        int pontos_add =  (int) Math.ceil((1 + bonusVip) * ((preco / 10)*qtd));
        this.pontos += pontos_add + (pontos_add % 10);
    }
}
