package Java.aulas.aula4;

public class ContaEspecial extends Conta {
    private double bonus;

    public ContaEspecial(String numero) {
        super(numero);
        bonus = 0.0;
    }

    public void renderBonus() {
        super.creditar(this.bonus);
        this.bonus = 0.0;
    }

    public double getBonus() {
        return this.bonus;
    }

    public void creditar(double valor) {
        super.creditar(valor);
        bonus += valor * 0.01;
    }
}