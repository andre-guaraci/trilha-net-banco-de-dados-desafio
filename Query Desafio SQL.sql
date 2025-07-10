--1
SELECT
	Nome,
	Ano
FROM 
	Filmes

--2
SELECT
	Nome,
	Ano
FROM 
	Filmes

ORDER BY 
	Ano

--3
SELECT
	Nome,
	Ano,
	Duracao
FROM 
	Filmes

WHERE
	Nome = 'De Volta Para o Futuro'

--4
SELECT
	Nome,
	Ano,
	Duracao
FROM
	Filmes

WHERE 
	Ano = '1997'

--5
SELECT
	Nome,
	Ano,
	Duracao
FROM
	Filmes

WHERE 
	Ano > '2000'

--6
SELECT
	Nome,
	Ano,
	Duracao
FROM 
	Filmes

WHERE 
	Duracao > '100'
	AND Duracao < '150'
ORDER BY 
	Duracao

--7
SELECT
	Ano,
	COUNT(*) Quantidade		
FROM 
	Filmes

GROUP BY 
	Ano
ORDER BY 
	SUM(Duracao) DESC

--8
SELECT 
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
FROM 
	Atores

WHERE 
	Genero = 'M'

--9
SELECT 
	PrimeiroNome,
	UltimoNome,
	Genero
FROM 
	Atores

WHERE 
	Genero = 'F'
ORDER BY 
	PrimeiroNome

--10
SELECT
	f.Nome AS Nome,
	g.Genero AS Genero
	
FROM
	Filmes	f

INNER JOIN FilmesGenero AS fg ON f.Id = fg.IdFilme
INNER JOIN Generos AS g ON fg.IdGenero = g.Id;

--11
SELECT
	f.Nome AS Nome,	
	g.Genero AS	Genero
	
FROM Filmes AS f

INNER JOIN FilmesGenero AS fg ON f.Id = fg.IdFilme
INNER JOIN Generos AS g ON fg.IdGenero = g.Id

WHERE g.Genero = 'Mistério'

--12
SELECT
	f.Nome AS Nome,
	a.PrimeiroNome AS PrimeiroNome,
	a.UltimoNome AS UltimoNome,
	el.Papel AS Papel

FROM Filmes AS f

INNER JOIN ElencoFilme AS el ON	el.IdFilme = f.Id
INNER JOIN Atores AS a ON a.Id = el.IdAtor;



	



	
