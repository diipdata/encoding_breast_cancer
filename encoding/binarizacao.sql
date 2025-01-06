-- BINARIZAÇÃO da variável "classe" ( 0 / 1)
SELECT DISTINCT classe,
	CASE
		WHEN classe = 'no-recurrence-events' THEN 0
		WHEN classe	= 'recurrence-events' THEN 1
	END AS classe
FROM tb_dados;


-- BINARIZAÇÃO da variável "irradiando" ( 0 / 1)
SELECT DISTINCT irradiando,
	CASE
		WHEN irradiando = 'no' THEN 0
		WHEN irradiando	= 'yes' THEN 1
	END AS irradiando
FROM tb_dados



-- BINARIZAÇÃO da variável "node_caps" ( 0 / 1)
-- VALORES NULOS, ALTERAÇÃO PARA CATEGORIZAÇÃO E COLOCAMOS O VALOR "2" COMO IDENTIFICAÇÃO DESSE VALOR AUSENTE.
SELECT DISTINCT node_caps,
	CASE
		WHEN node_caps = 'no' THEN 0
		WHEN node_caps	= 'yes' THEN 1
		ELSE 2
	END AS node_caps
FROM tb_dados