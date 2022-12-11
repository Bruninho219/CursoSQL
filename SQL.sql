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

/*
ORDER BY col ASC  :crescente
ORDER BY col DESC :decrescente
*/
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

AND :e
OR  :ou
IN  :em
NOT :não 
*/


--IN (seleciona os que contém) / NOT (seleciona se não conter)
SELECT *
FROM tabela
	WHERE city IN ('A', 'B', 'C'); --case sensitive
	/*--ou
	WHERE city IN NOT ('A', 'B', 'C'); --case sensitive
	*/


--CONCAT (concatena) e AS ("renomeia coluna")
SELECT CONCAT (name1, ' ', name2) as namefull
FROM tabela;


/*
Funções
UPPER(col1) :deixa as letras maiúsculas
LOWER(col2) :deixa as letras minúsculas
SQRT(col3)  :raiz quadrada
AVG(col4)   :média
SUM(col5)   :soma
*/

--subconsulta
SELECT name1, salary
FROM employes
	WHERE salary > (SELECT AVG(salary)
					FROM employes)
	ORDER BY salary DESC;

