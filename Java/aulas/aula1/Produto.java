public class Produto {
        private String descricao;
        private double valor;
        private int qtd_estoque;

        public Produto(String descricao, double valor, int qtd_estoque){
            this.descricao = descricao;
            this.valor = valor;
            this.qtd_estoque = qtd_estoque;
        }

        public String Getdescricao(){
            return this.descricao;
        }

        public double getValor(){
            return this.valor;
        }

        public int getEstoque(){
            return this.qtd_estoque;
        }

        public void alterarEstoque(int add_estoque){
            this.qtd_estoque += add_estoque;
        }

        public void setValor(double Nvalor){
            this.valor = Nvalor;
        }

        public void setDescricao(String descricao){
            this.descricao = descricao;
        }

}
