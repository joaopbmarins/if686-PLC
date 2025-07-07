package Java.aulas.aula3;

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
  
      Banco b = new Banco();
      b.cadastrarConta(c);
      b.cadastrarConta(p);
      b.creditar("456-X",10.0);
      b.renderJuros("456-X");
  
      System.out.println("Conta "+p.getNumero());
      System.out.println(" saldo "+p.getSaldo());

    }
}
