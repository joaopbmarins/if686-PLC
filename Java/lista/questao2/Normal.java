package Java.lista.questao2;

public class Normal extends Cliente{
    public Normal(String nome, int mes_cadastro){
        super(nome, mes_cadastro);
        this.tipo = TipoCliente.NORMAL; 
    }

    @Override
    protected void addPontos(int qtd, double preco, double bonusVip){
        int pontos_add = (int) (preco / 10)*qtd;
        this.pontos += pontos_add + (pontos_add % 10);
    }
}
