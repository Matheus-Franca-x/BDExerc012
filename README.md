# BDExerc012
## Criar, em SQL Server, considerando o domínio de uma livraria, conforme modelado:

![image](https://github.com/Matheus-Franca-x/BDExerc012/assets/99504777/9b234e64-7bed-411e-a245-82dbc324c0d3)

Foram delimitadas as seguintes restrições:
- O código do livro é auto incremental partindo de 100001 e incrementando de 100 em 100
- O código do autor é auto incremental partindo de 2351 e incrementando de 1 em 1
- O código da editora é auto incremental partindo de 491 e incrementando de 16 em 16
- Por lei, o ISBN deve ter 13 dígitos
- O nome do autor é único
- O nome da editora é único
- Se não preenchida, a língua dos livros é ‘PT-BR’
- Não são cadastrados livros de ano inferior a 1990
- Não são cadastrados livros de edição inferior a 1993
- Não existem preços negativos
- Não existem livros com menos de 15 páginas
- Não existem Números de Endereços negativos
- Telefones são fixos devem ter 10 dígitos
- No Brasil, todo CEP tem 8 caracteres
- Só são cadastrados livros de autores do Brasil, Estados Unidos, Inglaterra e Alemanha
