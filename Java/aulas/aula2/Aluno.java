package Java.aulas.aula2;

public class Aluno {
    private String nome;
    private String cpf;
    private int idade;
    private Curso curso;

    public Aluno(String nome, String cpf, int idade, Curso curso) {
        this.nome = nome;
        this.cpf = cpf;
        this.idade = idade;
        this.curso = curso;
    }

    public Curso getCurso() {
        return this.curso;
    }

    public String getCPF(){
        return this.cpf;
    }

    public int getIdade(){
        return this.idade;
    }

    public String getNome(){
        return this.nome;
    }

    public void setCPF(String cpf_n) {
        this.cpf = cpf_n;
    }

    public void setIdade(int idade_n) {
        this.idade = idade_n;
    }

    public void setNome(String nome_n) {
        this.nome = nome_n;
    }

    public void setCurso(Curso curso_n) {
        this.curso = curso_n;
    }


    }