-- CATEGORIZAÇÃO da variável "seio" ( E / D )
SELECT DISTINCT seio,
	CASE
		WHEN seio = 'left' THEN 'E'
		WHEN seio = 'right' THEN 'D'
	END as seio
FROM tb_dados



-- CATEGORIZAÇÃO da variável "tamanho_tumor" ( 6 categorias )
SELECT DISTINCT tamanho_tumor,
	CASE
		WHEN tamanho_tumor = '0-4' OR tamanho_tumor = '5-9' THEN 'muito pequeno'
		WHEN tamanho_tumor = '10-14' OR tamanho_tumor = '15-19' THEN 'pequeno'
		WHEN tamanho_tumor = '20-24' OR tamanho_tumor = '25-29' THEN 'medio'
		WHEN tamanho_tumor = '30-34' OR tamanho_tumor = '35-39' THEN 'grande'
		WHEN tamanho_tumor = '40-44' OR tamanho_tumor = '45-49' THEN 'muito grande'
		WHEN tamanho_tumor = '50-54' OR tamanho_tumor = '55-59' THEN 'tratamento urgente'
	END AS tamanho_tumor
FROM tb_dados;