package Java.aulas.aula4;

public class Poupanca extends Conta {
    public Poupanca(String numero) {
        super(numero);
    }

    public void renderJuros(double taxa) {
        double juros = this.getSaldo() * taxa;
        this.creditar(juros);
    }
}