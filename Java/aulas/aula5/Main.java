package Java.aulas.aula5;

public class Main {
    public static void main(String[] args) {

        ContaAbstrata ca1, ca2;
        ca1 = new ContaEspecial("21.342-7");
        ca2 = new ContaImposto("21.987-8");
        ca1.debitar(500);
        ca2.debitar(500);
        System.out.println(ca1.getSaldo());
        System.out.println(ca2.getSaldo());


    }
}
