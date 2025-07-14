package Java.aulas.aula6;

public class Zebra implements Animal {
    int listras;
    double peso;

    public Zebra(int l, double p){
        listras = l;
        peso = p;
    }

    public double peso(){
        return this.peso;
    }

    public void nasca(){
        System.out.println("Nasce mais uma zebra");
    }

    public void passeie(){
        System.out.println("Galopa pelo campo");
    }

    public void durma(){
        System.out.println("Dorme em pé");
    }

    public void contaListras(){
        System.out.println("Essa zembra tem"+listras+"listras");
    }
}
