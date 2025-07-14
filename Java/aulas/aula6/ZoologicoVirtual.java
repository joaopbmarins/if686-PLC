package Java.aulas.aula6;

public class ZoologicoVirtual {
    
    static public void cicloDeVida(Animal animal){
        animal.nasca();
        animal.passeie();
        animal.durma();
    }

    static public void fazFuncionar(){
        Zebra z1 = new Zebra(102, 99);
        Animal z2 = (Animal) new Zebra(101, 107);
        Morcego m1 = new Morcego();
        Ornitorrinco o1 = new Ornitorrinco(25);

        cicloDeVida(z1);
        cicloDeVida(z2);
        cicloDeVida(m1);
        cicloDeVida(o1);

    }

}
