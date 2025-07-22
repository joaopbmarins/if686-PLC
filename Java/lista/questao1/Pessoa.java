package Java.lista.questao1;

public abstract class Pessoa implements Comparable<Pessoa> {
	private Integer idade;
	private String nome;


	Pessoa(Integer idade, String nome) {
		this.idade = idade;
		this.nome = nome;
	}

	@Override
	public int compareTo(Pessoa p){
		return this.idade.compareTo(p.idade);
	}

	public abstract Ticket getTicketType();

	public String getName(){
		return nome;
	}

	public Integer getAge(){
		return idade;
	}

	public String toString(){
        return getName()+": "+getAge()+"["+getTicketType()+"]";
	}



}