public class Conta {
    private String numero;
    private double saldo=0;

    public Conta(String numConta, double saldoInicial){
        this.numero = numConta;
        this.saldo = saldoInicial;
    }

    public void creditar(double valor) {
        saldo = saldo + valor;
    }

    public void debitar(double valor) {
        saldo = saldo - valor;
    }

    public double getSaldo() {
        return saldo;
    }

    public String getNumero() {
        return numero;
    }
}
