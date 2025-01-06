-- CRIANDO UM NOVO DATASET APÓS TRANSFORMAÇÕES

CREATE TABLE tb_dados2
AS
SELECT
	CASE
		WHEN classe = 'no-recurrence-events' THEN 0
		WHEN classe	= 'recurrence-events' THEN 1
	END AS classe,
	
	idade,
	
	menopausa,
	
	CASE
		WHEN tamanho_tumor = '0-4' OR tamanho_tumor = '5-9' THEN 'muito pequeno'
		WHEN tamanho_tumor = '10-14' OR tamanho_tumor = '15-19' THEN 'pequeno'
		WHEN tamanho_tumor = '20-24' OR tamanho_tumor = '25-29' THEN 'medio'
		WHEN tamanho_tumor = '30-34' OR tamanho_tumor = '35-39' THEN 'grande'
		WHEN tamanho_tumor = '40-44' OR tamanho_tumor = '45-49' THEN 'muito grande'
		WHEN tamanho_tumor = '50-54' OR tamanho_tumor = '55-59' THEN 'tratamento urgente'
	END AS tamanho_tumor,
	
	inv_nodes,
	
	CASE
		WHEN node_caps = 'no' THEN 0
		WHEN node_caps	= 'yes' THEN 1
			ELSE 2
	END AS node_caps,
	
	deg_malig,
	
	CASE
		WHEN seio = 'left' THEN 'E'
		WHEN seio = 'right' THEN 'D'
	END as seio,
		
	CASE
		WHEN quadrante = 'right_low' THEN '1'
		WHEN quadrante = 'right_up' THEN '2'
		WHEN quadrante = 'left_low' THEN '3'
		WHEN quadrante = 'left_up' THEN '4'
		WHEN quadrante = 'central' THEN '5'
			ELSE '0'
	END as quadrante,
		
	CASE
		WHEN irradiando = 'no' THEN 0
		WHEN irradiando	= 'yes' THEN 1
	END AS irradiando

FROM tb_dados;