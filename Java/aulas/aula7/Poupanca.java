package Java.aulas.aula7;

public class Poupanca extends Conta {
    public Poupanca(String numero) {
        super(numero);
    }

    public void renderJuros(double taxa) {
        this.creditar(this.getSaldo() * taxa);
    }
}

