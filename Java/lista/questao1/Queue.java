package Java.lista.questao1;

import java.util.ArrayList;
import java.util.Collections;

public class Queue<T extends Pessoa>{
    private ArrayList<T> Pessoas;

    public Queue(){
        this.Pessoas = new ArrayList<>(10);
    }

    public Queue(int size){
        this.Pessoas = new ArrayList<>(size);
    }

    public void push(T pessoa){
        this.Pessoas.add(pessoa);

        Collections.sort(Pessoas);
        //Collections.reverse(Pessoas);
    }
    public T pop(){
        return (T) this.Pessoas.remove(this.Pessoas.size() - 1);
    }
    public boolean isEmpty(){
        return (this.Pessoas.isEmpty());
    }
}
