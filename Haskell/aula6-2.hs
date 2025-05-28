type Pessoa = String
type Livro = String
type BancoDados = [(Pessoa,Livro)]

baseExemplo :: BancoDados
baseExemplo = [("Sergio", "O Senhor dos Aneis"), ("Andre", "Duna"), ("Fernando", "Jonathan Strange & Mr.Norrell"), ("Fernando", "Duna")]

livros :: BancoDados -> Pessoa -> [Livro]
livros bd myP = [l | (p,l) <- bd, myP == p]

emprestimos :: BancoDados -> Livro -> [Pessoa]
emprestimos bd myLiv = [p | (p,l) <- bd, myLiv == l]

emprestado :: BancoDados -> Livro -> Bool
emprestado bd liv = foldr1 (||) [liv == l | (l,p) <- bd]

qtdEmprestimos :: BancoDados -> Pessoa -> Int
qtdEmprestimos bd myP = length [p | (p,l) <- bd, p == myP]

emprestar :: BancoDados -> Pessoa -> Livro -> BancoDados 
emprestar bd p l = ((p,l):bd)

devolver :: BancoDados -> Pessoa -> Livro -> BancoDados
devolver bd myP myL = filter found bd
    where
        found :: (Pessoa,Livro) -> Bool
        found (p,l) = (p,l) /= (myP, myL)
            
