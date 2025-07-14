package Java.aulas.aula7;

public class ContaImposto extends ContaAbstrata {
    private static final double CPMF = 0.001;

    public ContaImposto(String numero) {
        super(numero);
    }

    public void debitar(double valor) {
    double imposto = valor * CPMF;
    double total = valor + imposto;
    super.setSaldo(this.getSaldo() - total);
    }
}