package Java.aulas.aula4;

public class Programa {
    public static void main(String[] args) {
        // Conta c = new Conta("123-X", 8.0);
      Conta c = new Conta("123-X");
      System.out.println("Conta "+c.getNumero());
      System.out.println(" saldo "+c.getSaldo());
      System.out.println();
      c.creditar(10.0);
      c.debitar(5.0);
      System.out.println("Conta "+c.getNumero());
      System.out.println(" saldo "+c.getSaldo());
  
      Poupanca p = new Poupanca("456-X");
      System.out.println("Conta "+p.getNumero());
      System.out.println(" saldo "+p.getSaldo());
      System.out.println();
      p.creditar(10.0);
      p.debitar(5.0);
      System.out.println("Conta "+p.getNumero());
      System.out.println(" saldo "+p.getSaldo());

      ContaEspecial ce = new ContaEspecial("999-X");
      System.out.println("Conta "+ce.getNumero());
      System.out.println(" saldo "+ce.getSaldo());
      System.out.println();
      ce.creditar(10.0);
      ce.debitar(5.0);
      ce.renderBonus();
      System.out.println("Conta "+ce.getNumero());
      System.out.println(" saldo "+ce.getSaldo());
  
      Banco b = new Banco();
      b.cadastrarConta(c);
      b.cadastrarConta(p);
      b.cadastrarConta(ce);
      b.creditar("456-X",10.0);
      b.transferir("456-X", "999-X", 5);
      b.renderJuros("456-X");
      b.renderBonus("999-X");
  
      System.out.println("Conta "+ce.getNumero());
      System.out.println(" saldo "+ce.getSaldo());

    }
}
