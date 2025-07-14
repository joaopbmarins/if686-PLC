package Java.aulas.aula5;

public class ContaEspecial extends Conta {
    private static final double TAXA = 0.01;
    private double bonus;

    public ContaEspecial(String numero) {
        super(numero);
        this.bonus = 0.0;
    }

    public void creditar(double valor) {
        this.bonus = this.bonus + (valor * TAXA);
        super.creditar(valor);
    }
}
