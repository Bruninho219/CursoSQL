--Chamar tabela
SELECT col1, col2
	FROM tabela;
--ou
SELECT tabela.col1, tabela.col2
	FROM tabela;


--Limita a quantidade de linhas
SELECT col1, col2
	FROM tabela
	LIMIT 5;


--Chama tabela a partir da linha X e puxando Y linhas
SELECT col1, col2
	FROM tabela
	OFFSET 3 LIMIT 5;
	--ou LIMIT 3, 5;


--Ordenação
SELECT *
	FROM tabela
	ORDER BY col1;
	--ou ORDER BY col1, col2;


--Chama tabela sob condição
SELECT col1
	FROM tabela
	WHERE condicao;
/*
=  :igual
!= :diferente
>  :maior
<  :menor
>= :maior ou igual
<= :menor ou igual
BETWEEN X AND Y :entre X e Y
*/
