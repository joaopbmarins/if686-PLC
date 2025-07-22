package Java.lista.questao1;

public class Main {
    public static void main(String[] args) {

        Queue<Pessoa> queue = new Queue<>(5);

        queue.push(new Crianca(5, "Crianca 1"));
        queue.push(new Adulto(30, "Adulto 1"));
        queue.push(new Crianca(6, "Crianca 2"));
        queue.push(new Adulto(20, "Adulto 2"));
        queue.push(new Crianca(8, "Crianca 3"));


        while(!queue.isEmpty()){
            Pessoa p = queue.pop();
            System.out.println(p);
        }


    }
}
