package Java.aulas.aula7;

public class Banco {
    private RepositorioContas contas;
    private final double taxa = 0.01;

    public Banco(RepositorioContas rep) {
        this.contas = rep;
    }

    public void cadastrar(ContaAbstrata conta) {
        String numero = conta.getNumero();
        if (!contas.existe(numero)) {
            contas.inserir(conta);
        } else {
            throw new RuntimeException("Já cad...");
        }
    }

    private ContaAbstrata procurarConta(String numero) {
        if(contas.existe(numero)){
            return contas.procurar(numero);
        }
        return null;

    }

    public void creditar(String num_c, double valor) {
        ContaAbstrata c = procurarConta(num_c);

        if (c != null) {
            c.creditar(valor);
        }
    }

    public void debitar(String num_c, double valor) {
        ContaAbstrata c = procurarConta(num_c);

        if (c != null) {
            c.debitar(valor);
        }
    }

    public double getSaldo(String num_c) {
        ContaAbstrata c = procurarConta(num_c);

        if (c != null) {
            return c.getSaldo();
        }
        return 0.0;
    }

    public void transferir(String conta1, String conta2, double valor) {
        ContaAbstrata c1, c2;
        c1 = this.procurarConta(conta1);
        c2 = this.procurarConta(conta2);
        c1.debitar(valor);
        c2.creditar(valor);

    }

    public void renderJuros(String numero) {
        ContaAbstrata c;
        c = this.procurarConta(numero);

        if (c instanceof Poupanca) {
            ((Poupanca) c).renderJuros(taxa);
        } else {
            throw new RuntimeException("Não é poupança");
        }

    }

}
