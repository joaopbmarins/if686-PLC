package Java.lista.questao3;

public class Main {
    public static void main(String[] args) {
        Automovel c1 = new Automovel(40.0, TipoMotor.FLEX);
        Automovel c2 = new Automovel(60.0, TipoMotor.ETANOL);
        Automovel c3 = new Automovel(45.0, TipoMotor.GASOLINA);

        Etanol e = new Etanol(4.5);
        Gasolina g = new Gasolina(5.5);

        e.calcularCusto(30.0);
        e.abastecer(c2, 30.0);

        g.calcularCusto(15.0);

        try{
            e.abastecer(c3, 15.0);
        } catch (CombustivelNaoCompativel | CombustivelOverflow ex) {
            System.out.println(ex.getMessage());
        }

        try{
            g.abastecer(c3, 50.0);
        } catch (CombustivelNaoCompativel | CombustivelOverflow ex) {
            System.out.println(ex.getMessage());
        }

        g.calcularCusto(10.0);
        g.ajustarPreco(6.55);

        g.calcularCusto(10.0);
        g.abastecer(c1, 10.0);

    }
}
