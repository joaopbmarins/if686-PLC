package Java.lista.questao2;

import java.util.Comparator;
import java.util.Arrays;


public class Sistema {
    private Cliente[] clientes;
    private int index = 0; 

    private double hamburger;
    private double batata;
    private double refri;
    private double bonusVip;

    public Sistema(double hamburger, double batata, double refri, double bonusVip){
        this.hamburger = hamburger;
        this.batata = batata;
        this.refri = refri;
        this.bonusVip = bonusVip;
        this.clientes = new Cliente[100];
    }

    private Cliente LocalizarCliente(String nome, TipoCliente tipo){
        for(int i=0;i<index;i++){
            if(clientes[i].getNome().equals(nome) && clientes[i].tipo == tipo){
                return clientes[i];
            }
        }
        return null;
    }

    public void addCliente(String nome, TipoCliente tipo, int mes_cadastro){
        Cliente c = null;
        if(tipo == TipoCliente.NORMAL){
            c = new Normal(nome, mes_cadastro);
        }
        else{
            c = new VIP(nome, mes_cadastro);
        }
        clientes[index] = c;
        index++;
    }

    private double getPriceHamburger(){
        return hamburger;
    }

    private double getPriceRefri(){
        return refri;
    }

    private double getPriceBatata(){
        return batata;
    }

    private double getBonus(){
        return bonusVip;
    }


    public void addCompra(String nome, TipoCliente tipo, int qtdHamburger, int qtdRefri, int qtdBatata){
        Cliente c = LocalizarCliente(nome, tipo);
        if(c == null){
            return;
        }

        if(c.tipo == TipoCliente.NORMAL){
            c.addPontos(qtdHamburger, getPriceHamburger(), 0);
            c.addPontos(qtdBatata, getPriceBatata(), 0);
            c.addPontos(qtdRefri, getPriceRefri(), 0);
        }
        else{
            c.addPontos(qtdHamburger, getPriceHamburger(), getBonus());
            c.addPontos(qtdBatata, getPriceBatata(), getBonus());
            c.addPontos(qtdRefri, getPriceRefri(), getBonus());
        }
    }

    public void finalizarMes(){

        Cliente[] ativos = Arrays.copyOf(clientes, index);
        Arrays.sort(ativos, Comparator.comparingInt(Cliente::getPontos).reversed());

        for(int i=0;i<index;i++){
            int i2 = i+1;
            System.out.println(i2 + ". Nome: "+ativos[i].getNome() + " Pontuação: " + ativos[i].pontos + " Tipo de Cliente: " + ativos[i].tipo);
        }
    }
}
