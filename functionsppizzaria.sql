use PIZZARIA;

INSERT INTO cliente (client_id, cpf,nome,telefone,email,senha) VALUES 
(1,'36173226010', 'Giovanna Souza', '999888776655', 'giovanna@gmail.com','123456');

INSERT INTO cliente (client_id, cpf,nome,telefone,email,senha) VALUES 
(2,'6578655490', 'Davi Luis', '99990876545', 'davilui@gmail.com','lui2');

INSERT INTO cliente (client_id, cpf,nome,telefone,email,senha) VALUES 
(3,'9087786328', 'Joao do Barro', '99967896543', 'dobarro@gmail.com','joa8');

INSERT INTO endereco(ende_id,ponto_referencia,bairro,endereco,numero,complemento) VALUES 
(1,'casa', 'curitiba', 'Rua Alex Teixeira', 30, 'Casa do portâo branco');

INSERT INTO endereco(ende_id,ponto_referencia,bairro,endereco,numero,complemento) VALUES 
(2,'apartamento', 'talles', 'Rua Raimundo Silva', 23, 'Casa do muro alto');

INSERT INTO endereco(ende_id,ponto_referencia,bairro,endereco,numero) VALUES 
(3,'casa', 'São Paulo', 'Rua 23 de Março', 58);

INSERT INTO cliente_endereco (client_id,ende_id) VALUES (1,1);
INSERT INTO cliente_endereco (client_id,ende_id) VALUES (2,2);
INSERT INTO cliente_endereco (client_id,ende_id) VALUES (3,3);

INSERT INTO bebida (bebida_id,nome,preco) VALUES (1, 'Coca-cola 350ml', 4.99);
INSERT INTO bebida (bebida_id,nome,descricao, preco) VALUES (2, 'Coca-cola 350ml','Zero', 5.99);
INSERT INTO bebida (bebida_id,nome,descricao, preco) VALUES (3, 'Suco de Maracujá 500ml','Suco da polpa', 7.99);

INSERT INTO motorista (mot_id, cpf,nome,telefone) VALUES (1,'89786578854','José FIlho', '99978654567');
INSERT INTO motorista (mot_id, cpf,nome,telefone) VALUES (2,'90987656645','Cleudes Silva', '99976457865');
INSERT INTO motorista (mot_id, cpf,nome,telefone) VALUES (3,'34564578865','Junior', '99976896534');

INSERT INTO borda (borda_id,sabor_borda) VALUES (1,'Nenhum');
INSERT INTO borda (borda_id,sabor_borda) VALUES (2,'Catupiry');
INSERT INTO borda (borda_id,sabor_borda) VALUES (3,'Chocolate');

INSERT INTO tamanho (tamanho_id, tipo,num_sabores) VALUES (1,'pequeno', 1);
INSERT INTO tamanho (tamanho_id, tipo,num_sabores) VALUES (2,'medio', 2);
INSERT INTO tamanho (tamanho_id, tipo,num_sabores) VALUES (3,'grande', 3);

INSERT INTO tiposabor(tipo_id,nome) VALUES (1,'tradicional');
INSERT INTO tiposabor(tipo_id,nome) VALUES (2,'especial');

INSERT INTO pizzapreco (tamanho_id,tipo_id,borda_id,preco) VALUES (1,1,1,26.00);
INSERT INTO pizzapreco (tamanho_id,tipo_id,borda_id,preco) VALUES (1,2,1,29.00);
INSERT INTO pizzapreco (tamanho_id,tipo_id,borda_id,preco) VALUES (2,1,1,35.00);
INSERT INTO pizzapreco (tamanho_id,tipo_id,borda_id,preco) VALUES (2,2,1,42.00);
INSERT INTO pizzapreco (tamanho_id,tipo_id,borda_id,preco) VALUES (3,1,1,47.00);
INSERT INTO pizzapreco (tamanho_id,tipo_id,borda_id,preco) VALUES (3,2,1,53.00);


INSERT INTO pizzapreco (tamanho_id,tipo_id,borda_id,preco) VALUES (1,1,2,30.00);
INSERT INTO pizzapreco (tamanho_id,tipo_id,borda_id,preco) VALUES (1,2,2,33.00);
INSERT INTO pizzapreco (tamanho_id,tipo_id,borda_id,preco) VALUES (2,1,2,42.00);
INSERT INTO pizzapreco (tamanho_id,tipo_id,borda_id,preco) VALUES (3,1,2,57.00);
INSERT INTO pizzapreco (tamanho_id,tipo_id,borda_id,preco) VALUES (3,2,2,63.00);


INSERT INTO pizzapreco (tamanho_id,tipo_id,borda_id,preco) VALUES (1,1,3,29.00);
INSERT INTO pizzapreco (tamanho_id,tipo_id,borda_id,preco) VALUES (1,2,3,32.00);
INSERT INTO pizzapreco (tamanho_id,tipo_id,borda_id,preco) VALUES (2,1,3,41.00);
INSERT INTO pizzapreco (tamanho_id,tipo_id,borda_id,preco) VALUES (2,2,3,48.00);
INSERT INTO pizzapreco (tamanho_id,tipo_id,borda_id,preco) VALUES (3,1,3,56.00);
INSERT INTO pizzapreco (tamanho_id,tipo_id,borda_id,preco) VALUES (3,2,3,62.00);

INSERT INTO sabor (sabor_id,tipo_id,nome,descricao) VALUES (1,1,'Mussarela','(Mussarela, rodelas de tomate, queijo e orégano)');
INSERT INTO sabor (sabor_id,tipo_id,nome,descricao) VALUES (2,1,'Calabresa','(Calabresa, mussarela e cebola)');
INSERT INTO sabor (sabor_id,tipo_id,nome,descricao) VALUES (3,1,'Portuguesa','(mussarela, ovos, palmito, pimentão, ervilha, presunto e cebola)');
INSERT INTO sabor (sabor_id,tipo_id,nome,descricao) VALUES (4,2,'Bacon','(Mussarela coberta com bacon e orégano)');
INSERT INTO sabor (sabor_id,tipo_id,nome,descricao) VALUES (5,1,'Frango c/catupiry','(molho de tomate, mussarela e frango com catupiry)');
INSERT INTO sabor (sabor_id,tipo_id,nome,descricao) VALUES (6,1,'Quatro queijos','(mussarela, provolone, parmesão e catupiry)');
INSERT INTO sabor (sabor_id,tipo_id,nome,descricao) VALUES (7,2,'Caprese','(apresenta tomates frescos, queijo mozzarella, manjericão e um toque de azeite de oliva)');
INSERT INTO sabor (sabor_id,tipo_id,nome,descricao) VALUES (8,1,'Vegetariana','(Uma opção saudável e chaia de sabores)');
INSERT INTO sabor (sabor_id,tipo_id,nome,descricao) VALUES (9,2,'Havaiana','(Presunto cozido, pedaços de abacaxi e agridoce)');
INSERT INTO sabor (sabor_id,tipo_id,nome,descricao) VALUES (10,2,'Pepperoni','(Coberta por fatias de salame pepperoni, pimenta e cebola)');

