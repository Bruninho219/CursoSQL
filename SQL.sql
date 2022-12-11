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
MIN(col6)   :valor mínimo
MAX(col7)   :valor máximo
*/

--subconsulta
SELECT name1, salary
FROM employes
	WHERE salary > (SELECT AVG(salary)
					FROM employes)
	ORDER BY salary DESC;


/*
LIKE 'A%' :tudo que começa com A
LIKE '%z' :tudo que acaba com z
LIKE 'A_' :tudo que começa com A e é seguido por um caracter desconhecido
*/

--LIKE (condição de pesquisa)
SELECT col
FROM tabela
	WHERE col1 LIKE 'termo_pesquisado'

--LIKE
SELECT name, MIN(cost)
FROM itens
	WHERE name1	LIKE '%boxes' AND
		  seller_id IN ('68', '6', '1');


--Combinação de tabela
SELECT custumers.ID, custumers.Name, orders.Name, orders.Amount
FROM custumers, orders
	WHERE custumers.ID = orders.Custumer_ID
	ORDER BY custumers.ID;


/*
INNER JOIN t1 ON t2       :intersecção
LEFT OUTER JOIN t1 ON t2  :t1 + intersecção
RIGHT OUTER JOIN t1 ON t2 :t2 + intersecção

*/

--INNER JOIN
SELECT t1.col1, t2.col2
FROM t1 INNER JOIN t2
	ON t1.id = t2.id;


--LEFT OUTER JOIN / RIGHT OUTER JOIN
SELECT t1.col1, t2.col2
FROM t1.id LEFT OUTER JOIN t2.id
   --t1.id RIGHT OUTER JOIN t2.id
	ON t1.id = t2.id;


/*
UNION     :combina varias tabelas equivalentes, e remove duplicatas
UNION ALL :combina varias tabelas equivalentes
*/

--UNION
SELECT id, name, NULL, cep
FROM tab1
UNION
SELECT id, name, city, NULL
FROM tab2;


--INSERT
INSERT INTO tabela
VALUE (val1, val2, val3)


--UPDATE
UPDATE tabela
	SET col1='valor1', col2='valor2')
WHERE condicao;


--DELETE
DELETE FROM tabela
WHERE condicao;