package Java.lista.questao2;

public abstract class Cliente {
    private String nome;
    private int mes_cadastro;
    protected int pontos = 0;
    protected TipoCliente tipo;

    public Cliente(String nome,int mes_cadastro){
        this.nome = nome;
        this.mes_cadastro = mes_cadastro;
        this.pontos = 0;
    }

    public String getNome(){
        return this.nome;
    }

    public int get_mes(){
        return this.mes_cadastro;
    }

    protected abstract void addPontos(int qtd, double preco, double bonusVip);

    public abstract void addCompra();

    
}
