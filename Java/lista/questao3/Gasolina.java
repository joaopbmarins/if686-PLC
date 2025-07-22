package Java.lista.questao3;

public class Gasolina implements BombaDeCombustivel{
    private double precoLitro;

    Gasolina(){
        this.precoLitro = 0;
    }

    Gasolina(Double precoLitro){
        this.precoLitro = precoLitro;
    }

    @Override
    public void abastecer(Automovel automovel, double quantidadeLitros) {
        double combustivelAtual = automovel.get_combustivelAtual(),
                capacidadeMaximaTanque = automovel.get_capacidadeMaximaTanque();
        TipoMotor motorAutomovel = automovel.get_motor();

        if(motorAutomovel == TipoMotor.FLEX || motorAutomovel == TipoMotor.GASOLINA){
            if(quantidadeLitros+combustivelAtual <= capacidadeMaximaTanque){
                automovel.set_combustivelAtual(quantidadeLitros + combustivelAtual);
            }
            else{
                throw  new CombustivelOverflow("A quantidade de Gasolina a ser adicionada extrapola a capacidade do Tanque");
            }
        }
        else{
            throw new CombustivelNaoCompativel("Carro incompátivel com GASOLINA");
        }
    }

    @Override
    public void ajustarPreco(double novoPreco) {
        this.precoLitro = novoPreco;
    }

    @Override
    public void calcularCusto(double quantidadeLitros) {
        System.out.println("GASOLINA: Litros: " + quantidadeLitros + " Custo: "  + this.precoLitro*quantidadeLitros);
    }
}
