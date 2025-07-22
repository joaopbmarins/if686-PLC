

public abstract class Pessoa implements Comparable {
	private Integer idade;
	private String nome;


	Pessoa(Integer idade, String nome) {
		this.idade = idade;
		this.nome = nome;
	}

	public Integer compareTo(Pessoa person){
		return this.idade.compareTo(person.idade);
	}

	public abstract Ticket getTicketType();

	public String getName(){
		return nome;
	}

	public Integer getAge(){
		return idade;
	}

	@Override
	public String toString(){
        return getName()+":"+getAge()+"["+getTicketType()+"]";
	}



}