use PIZZARIA;

UPDATE cliente
SET nome = 'Erick', telefone = '99978674523', email = 'erick@gmail.com', senha = 'erick123'
WHERE client_id = 1;

UPDATE pedido
SET preco = 35.50
WHERE pedido_id = 1;

UPDATE bebida
SET preco = 6.99
WHERE bebida_id = 1;

UPDATE motorista
SET nome = 'Fernando', telefone = '99977776543'
WHERE mot_id = 1;

UPDATE borda
SET sabor_borda = 'Recheada com Catupiry'
WHERE borda_id = 2;
