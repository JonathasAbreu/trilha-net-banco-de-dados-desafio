1 - Buscar o nome e ano dos filmes
SELECT
    nome,
    ano
FROM
    filmes;

2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT
    nome,
    ano
FROM
    filmes
ORDER BY
    ano ASC;

3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT
    nome,
    ano,
    duracao
FROM
    filmes
WHERE
    nome LIKE '%De volta para o futuro%';

4 - Buscar os filmes lançados em 1997
SELECT
    nome,
	ano,
	duracao
FROM
    filmes
WHERE
	ano LIKE '%1997%';

5 - Buscar os filmes lançados APÓS o ano 2000
SELECT
    nome,
	ano,
	duracao
FROM
    filmes
WHERE
	ano > 2000;

6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT
    nome,
	ano,
	duracao
FROM
    filmes
WHERE
	Duracao between 100 and 150
ORDER BY
	duracao ASC;

7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT
  ano,
  COUNT(*) AS quantidade
FROM filmes
GROUP BY ano
ORDER BY quantidade DESC;

8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT
  genero,
  primeironome,
  ultimonome
FROM atores
WHERE genero LIKE '%M%';

9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT
  genero,
  primeironome,
  ultimonome
FROM atores
WHERE genero LIKE '%F%'
ORDER BY
PrimeiroNome ASC;

10 - Buscar o nome do filme e o gênero
SELECT
  nome,
  genero
FROM filmes, generos

11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT
  nome,
  genero
FROM filmes, generos
WHERE genero LIKE '%mistério%';

12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT
  nome,
  PrimeiroNome,
  UltimoNome,
  papel
FROM filmes, atores, ElencoFilme