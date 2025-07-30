package Java.lista.questao3;

public class Automovel {
    private double CombustivelAtual;
    private final double capacidadeMaximaTanque;
    private final TipoMotor motor;

    public Automovel(Double capacidadeMaximaTanque, TipoMotor motor) {
        this.CombustivelAtual = 0;
        this.capacidadeMaximaTanque = capacidadeMaximaTanque;
        this.motor = motor;
    }

    public double get_combustivelAtual(){
        return this.CombustivelAtual;
    }

    public void set_combustivelAtual(double combustivelAtual){
        this.CombustivelAtual = combustivelAtual;
    }

    public double get_capacidadeMaximaTanque(){
        return this.capacidadeMaximaTanque;
    }

    public TipoMotor get_motor(){
        return this.motor;
    }
}
