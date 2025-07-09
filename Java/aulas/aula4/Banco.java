package Java.aulas.aula4;

public class Banco {
    private Conta[] contas;
    private int indice;
    private final double taxa = 0.01;

    public Banco() {
        contas = new Conta[100];
        indice = 0;
    }

    public void cadastrarConta(Conta c) {
        contas[indice] = c;
        indice++;
    }

    private Conta procurarConta(String numero) {
        int i = 0;
        Conta resposta = null;

        for(i=0;i<indice;i++){
            resposta = this.contas[i];
            if(resposta.getNumero().equals(numero)){
                return resposta;
            }
        }
        throw new RuntimeException("Não achou a conta: " + numero);
    }

    public void creditar(String num_c, double valor) {
        Conta c = procurarConta(num_c);

        if(c != null){
            c.creditar(valor);
        }
    }

    public void debitar(String num_c, double valor){
        Conta c = procurarConta(num_c);

        if(c != null){
            c.debitar(valor);
        }
    }

    public double getSaldo(String num_c){
        Conta c = procurarConta(num_c);

        if(c != null){
            return c.getSaldo();
        }
        return 0.0;
    }

    public void transferir(String conta1,String conta2, double valor) {
        Conta c1,c2;
        c1 = this.procurarConta(conta1); 
        c2 = this.procurarConta(conta2); 
        c1.debitar(valor); 
        c2.creditar(valor); 
        
    }
      
    public void renderJuros(String numero) {
        Conta c;
        c = this.procurarConta(numero); 

        if (c instanceof Poupanca) {
        ((Poupanca) c).renderJuros(taxa);}
        else {
        throw new RuntimeException("Não é poupança");}

    }
      
    public void renderBonus(String numero_ce){
        Conta c = procurarConta(numero_ce);

        if (c instanceof ContaEspecial){
            ((ContaEspecial) c).renderBonus();
        }
        else{
            throw new RuntimeException("Nao é conta especial");
        }

    }
}
