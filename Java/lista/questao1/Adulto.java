package Java.lista.questao1;

public class Adulto extends Pessoa {


    Adulto(Integer idade, String nome) {
        super(idade, nome);
    }

    @Override
    public Ticket getTicketType() {
        return Ticket.ADULTO;
    }
}
