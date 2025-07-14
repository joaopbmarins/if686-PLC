package Java.aulas.aula5;

public class Poupanca extends Conta {
    public Poupanca(String numero) {
        super(numero);
    }

    public void renderJuros(double taxa) {
        this.creditar(this.getSaldo() * taxa);
    }
}

