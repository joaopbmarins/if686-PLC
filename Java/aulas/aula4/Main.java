package Java.aulas.aula4;

public class Main {
	public static void main(String[] args) {

		/*
		 * 
		 * ContaEspecial contae;
		 * contae = new ContaEspecial("21.342-7");
		 * contae.creditar(200.00);
		 * contae.debitar(100.00);
		 * contae.renderBonus();
		 * System.out.println(contae.getSaldo());
		 */

		Conta conta;
		conta = new ContaEspecial("21.342-7");

		((Conta) conta).creditar(200.00);
		conta.debitar(100.00);

		if (conta instanceof ContaEspecial) {
			((ContaEspecial) conta).renderBonus();
		}
		System.out.println(conta.getSaldo());

	}
}