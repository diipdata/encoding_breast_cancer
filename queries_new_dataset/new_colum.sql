-- Criar uma nova coluna chamada posicao_tumor concatenando as colunas inv_nodes e quadrante.

CREATE TABLE tb_dados4
AS
SELECT
	classe,

	idade,

	menopausa,

	tamanho_tumor,

	CONCAT(tb_dados3.inv_nodes, '-', tb_dados3.quadrante ) AS posição_tumor,

	node_caps,

	deg_malig,

	seio,

	irradiando
	
FROM tb_dados3