package Java.aulas.aula3;


public class Main
{
	public static void main(String[] args) {

		Poupanca poupanca = new Poupanca("21.342-7");
    poupanca.creditar(500.87);
    poupanca.debitar(45.00);
    System.out.println(poupanca.getSaldo());
	    
	}
}