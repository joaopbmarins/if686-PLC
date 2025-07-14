package Java.aulas.aula6;

public class Ornitorrinco implements Animal {
    
    double peso;

    Ornitorrinco(double p){
        peso = p;
    }

    public double peso(){
        return this.peso;
    }

    public void nasca(){
        System.out.println("Quebra o ovo para sair");
    }

    public void passeie(){
        System.out.println("Anda e nada de um lado para o outro");
    }

    public void durma(){
        System.out.println("Dorme dentro de túneis, durante o dia");
    }


}
