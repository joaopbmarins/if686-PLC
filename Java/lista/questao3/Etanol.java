package Java.lista.questao3;

public class Etanol implements BombaDeCombustivel{
    double precoLitro;

    Etanol(){
        this.precoLitro = 0;
    }

    Etanol(Double precoLitro){
        this.precoLitro = precoLitro;
    }

    @Override
    public void abastecer(Automovel automovel, double quantidadeLitros) {
        double combustivelAtual = automovel.get_combustivelAtual(),
                capacidadeMaximaTanque = automovel.get_capacidadeMaximaTanque();
        TipoMotor motorAutomovel = automovel.get_motor();
        if(motorAutomovel == TipoMotor.FLEX || motorAutomovel == TipoMotor.ETANOL)
            if(quantidadeLitros+combustivelAtual <= capacidadeMaximaTanque)
                automovel.set_combustivelAtual(quantidadeLitros + combustivelAtual);
            else{
                throw  new CombustivelOverflow("A quantidade de Etanol a ser adicionada extrapola a capacidade do Tanque");
            }
        else{
            throw new CombustivelNaoCompativel("Carro incompátivel com ETANOL");
        }
    }

    @Override
    public void ajustarPreco(double novoPreco) {
        this.precoLitro = novoPreco;
    }

    @Override
    public void calcularCusto(double quantidadeLitros) {
        System.out.println("ETANOL: Litros: " + quantidadeLitros + " Custo: "  + this.precoLitro*quantidadeLitros);
    }
}
