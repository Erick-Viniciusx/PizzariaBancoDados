Select * FROM bebida;

Select * FROM motorista;

Select * FROM cliente;

SELECT pedido_pizza.pedidopizza_id, tamanho.tipo as tamanho, borda.sabor_borda,
       sabor.nome as sabor_nome, sabor.descricao as sabor_descricao
FROM pedido_pizza
JOIN tamanho ON pedido_pizza.tamanho_id = tamanho.tamanho_id
JOIN borda ON pedido_pizza.borda_id = borda.borda_id
JOIN pizza_sabor ON pedido_pizza.pedidopizza_id = pizza_sabor.pedidopizza_id
JOIN sabor ON pizza_sabor.sabor_id = sabor.sabor_id;

select * from borda;




