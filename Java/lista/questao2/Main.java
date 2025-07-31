import Java.lista.questao2.Sistema;
import Java.lista.questao2.TipoCliente;

public class Main {
    public static void main(String[] args) {
        Sistema sistema = new Sistema(10.0, 5.0, 3.0, 2.0);

        // Adicionando clientes
        sistema.addCliente("João", TipoCliente.NORMAL, 1);
        sistema.addCliente("Maria", TipoCliente.VIP, 2);
        sistema.addCliente("Carlos", TipoCliente.VIP, 3);
        sistema.addCliente("Ana", TipoCliente.NORMAL, 4);

        // Registrando compras
        sistema.addCompra("João", TipoCliente.NORMAL, 2, 1, 3);
        sistema.addCompra("Maria", TipoCliente.VIP, 1, 1, 1);
        sistema.addCompra("Carlos", TipoCliente.VIP, 3, 0, 2);
        sistema.addCompra("Ana", TipoCliente.NORMAL, 0, 1, 1);

        // Finalizando o mês
        sistema.finalizarMes();
    }
}
