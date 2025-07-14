package Java.aulas.aula7;

public class RepositorioContaArray implements RepositorioContas {
    private int indice = 0;
    private ContaAbstrata contas[];

    RepositorioContaArray(){
        contas = new ContaAbstrata[100];
        indice = 0;
    }

    public void inserir(ContaAbstrata ca){
        this.contas[indice] = ca;
        indice += 1;
    }

    public ContaAbstrata procurar(String numero){
        for(int i=0;i<indice;i++){
            if(contas[i].getNumero().equals(numero)){
                return contas[i];
            }
        }
        return null;
    }

    //void remover(String numero);

    //void atualizar(ContaAbstrata conta);

    public boolean existe(String numero){
        for(int i=0;i<indice;i++){
            if(contas[i].getNumero().equals(numero)){
                return true;
            }
        }
        return false;
    }
}
