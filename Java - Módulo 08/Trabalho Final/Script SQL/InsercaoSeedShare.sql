INSERT INTO Estado VALUES(99999991, 'Acre', 'Brasil');
INSERT INTO Estado VALUES(99999992, 'Alagoas', 'Brasil');
INSERT INTO Estado VALUES(99999993, 'Amazonas', 'Brasil');
INSERT INTO Estado VALUES(99999994, 'Amap�', 'Brasil');
INSERT INTO Estado VALUES(99999995, 'Bahia', 'Brasil');
INSERT INTO Estado VALUES(99999996, 'Cear�', 'Brasil');
INSERT INTO Estado VALUES(99999997, 'Distrito Federal', 'Brasil');
INSERT INTO Estado VALUES(99999998, 'Esp�rito Santo', 'Brasil');
INSERT INTO Estado VALUES(99999999, 'Goi�s', 'Brasil');
INSERT INTO Estado VALUES(99999981, 'Maranh�o', 'Brasil');
INSERT INTO Estado VALUES(99999982, 'Minas Gerais', 'Brasil');
INSERT INTO Estado VALUES(99999983, 'Mato Grosso do Sul', 'Brasil');
INSERT INTO Estado VALUES(99999984, 'Mato Grosso', 'Brasil');
INSERT INTO Estado VALUES(99999985, 'Par�', 'Brasil');
INSERT INTO Estado VALUES(99999986, 'Para�ba', 'Brasil');
INSERT INTO Estado VALUES(99999987, 'Pernambuco', 'Brasil');
INSERT INTO Estado VALUES(99999988, 'Piau�', 'Brasil');
INSERT INTO Estado VALUES(99999989, 'Paran�', 'Brasil');
INSERT INTO Estado VALUES(99999971, 'Rio de Janeiro', 'Brasil');
INSERT INTO Estado VALUES(99999972, 'Rio Grande do Norte', 'Brasil');
INSERT INTO Estado VALUES(99999973, 'Rond�nia', 'Brasil');
INSERT INTO Estado VALUES(99999974, 'Roraima', 'Brasil');
INSERT INTO Estado VALUES(99999975, 'Rio Grande do Sul', 'Brasil');
INSERT INTO Estado VALUES(99999976, 'Santa Catarina', 'Brasil');
INSERT INTO Estado VALUES(99999977, 'Sergipe', 'Brasil');
INSERT INTO Estado VALUES(99999978, 'S�o Paulo', 'Brasil');
INSERT INTO Estado VALUES(99999979, 'Tocantins', 'Brasil');

INSERT INTO USUARIO(ID,Email,Senha) VALUES(99999997,'teste@teste.com','585d4b0d23d42ca88d1b7d28169cab58537dda22');
INSERT INTO USUARIO(ID,Email,Senha) VALUES(99999998,'teste2@teste.com','541c0711c966b053bda0281e0adc64ab8099b4f8');
INSERT INTO USUARIO(ID,Email,Senha) VALUES(99999999,'teste3@teste.com','5158a5c05dc512826190080b688e528240f3594c');

INSERT INTO Perfil (ID,Nome,Interesses,Status,Sexo,Data_Nascimento,ID_Estado,Foto_Url) VALUES (99999997,'Fusce','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus','Lorem ipsum dolor','Donec',to_date('1962-03-11','YYYY/MM/DD'),99999998,'http://3.bp.blogspot.com/_HwxB51wkeTE/THa6_MV1zvI/AAAAAAAAElw/I-QSY-TJjbw/s1600/batman-for-facebook.jpg');
INSERT INTO Perfil (ID,Nome,Interesses,Status,Sexo,Data_Nascimento,ID_Estado,Foto_Url) VALUES (99999998,'Curabitur','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed','blandit',to_date('1866-04-16','YYYY/MM/DD'),99999992,'http://3.bp.blogspot.com/_HwxB51wkeTE/THa6_MV1zvI/AAAAAAAAElw/I-QSY-TJjbw/s1600/batman-for-facebook.jpg');
INSERT INTO Perfil (ID,Nome,Interesses,Status,Sexo,Data_Nascimento,ID_Estado,Foto_Url) VALUES (99999999,'Sed','Lorem ipsum dolor sit','Lorem ipsum dolor','tempor',to_date('1907-09-30','YYYY/MM/DD'),99999991,'http://3.bp.blogspot.com/_HwxB51wkeTE/THa6_MV1zvI/AAAAAAAAElw/I-QSY-TJjbw/s1600/batman-for-facebook.jpg');

Update Usuario Set ID_PERFIL = 99999997 Where ID = 99999997;
Update Usuario Set ID_PERFIL = 99999998 Where ID = 99999998;
Update Usuario Set ID_PERFIL = 99999999 Where ID = 99999999;

INSERT INTO RELACIONAMENTO(ID,ID_PERFIL_SOLICITANTE,ID_PERFIL_SOLICITADO,DATA_SOLICITACAO,PENDENTE) VALUES(99999997,99999997,99999998,SYSDATE,1);
INSERT INTO RELACIONAMENTO(ID,ID_PERFIL_SOLICITANTE,ID_PERFIL_SOLICITADO,DATA_SOLICITACAO,DATA_RESPOSTA,PENDENTE,RESPOSTA) VALUES(99999998,99999997,99999999,SYSDATE,SYSDATE,0,1);
INSERT INTO RELACIONAMENTO(ID,ID_PERFIL_SOLICITANTE,ID_PERFIL_SOLICITADO,DATA_SOLICITACAO,DATA_RESPOSTA,PENDENTE,RESPOSTA) VALUES(99999999,99999998,99999999,SYSDATE,SYSDATE,0,0);

INSERT INTO Postagem (ID,ID_Perfil,Url_img,Descricao,Data) VALUES (99999991,99999997,'https://ichef.bbci.co.uk/news/ws/624/amz/worldservice/live/assets/images/2015/11/26/151126130740_planta_624x351_thinstock_nocredit.jpg','Lorem ipsum dolor',to_date('1907-09-30','YYYY/MM/DD'));
INSERT INTO Postagem (ID,ID_Perfil,Url_img,Descricao,Data) VALUES (99999992,99999997,'https://ichef.bbci.co.uk/news/ws/624/amz/worldservice/live/assets/images/2015/11/26/151126130740_planta_624x351_thinstock_nocredit.jpg','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu',to_date('1907-09-30','YYYY/MM/DD'));
INSERT INTO Postagem (ID,ID_Perfil,Url_img,Descricao,Data) VALUES (99999993,99999998,'https://ichef.bbci.co.uk/news/ws/624/amz/worldservice/live/assets/images/2015/11/26/151126130740_planta_624x351_thinstock_nocredit.jpg','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.',to_date('1907-09-30','YYYY/MM/DD'));
INSERT INTO Postagem (ID,ID_Perfil,Url_img,Descricao,Data) VALUES (99999994,99999997,'https://ichef.bbci.co.uk/news/ws/624/amz/worldservice/live/assets/images/2015/11/26/151126130740_planta_624x351_thinstock_nocredit.jpg','Lorem ipsum dolor sit amet, consectetuer adipiscing elit.',to_date('1907-09-30','YYYY/MM/DD'));
INSERT INTO Postagem (ID,ID_Perfil,Url_img,Descricao,Data) VALUES (99999995,99999997,'https://ichef.bbci.co.uk/news/ws/624/amz/worldservice/live/assets/images/2015/11/26/151126130740_planta_624x351_thinstock_nocredit.jpg','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed',to_date('1907-09-30','YYYY/MM/DD'));
INSERT INTO Postagem (ID,ID_Perfil,Url_img,Descricao,Data) VALUES (99999996,99999998,'https://ichef.bbci.co.uk/news/ws/624/amz/worldservice/live/assets/images/2015/11/26/151126130740_planta_624x351_thinstock_nocredit.jpg','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam',to_date('1907-09-30','YYYY/MM/DD'));
INSERT INTO Postagem (ID,ID_Perfil,Url_img,Descricao,Data) VALUES (99999997,99999999,'https://ichef.bbci.co.uk/news/ws/624/amz/worldservice/live/assets/images/2015/11/26/151126130740_planta_624x351_thinstock_nocredit.jpg','Lorem ipsum dolor sit amet, consectetuer',to_date('1907-09-30','YYYY/MM/DD'));
INSERT INTO Postagem (ID,ID_Perfil,Url_img,Descricao,Data) VALUES (99999998,99999998,'https://ichef.bbci.co.uk/news/ws/624/amz/worldservice/live/assets/images/2015/11/26/151126130740_planta_624x351_thinstock_nocredit.jpg','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu',to_date('1907-09-30','YYYY/MM/DD'));
INSERT INTO Postagem (ID,ID_Perfil,Url_img,Descricao,Data) VALUES (99999999,99999999,'https://ichef.bbci.co.uk/news/ws/624/amz/worldservice/live/assets/images/2015/11/26/151126130740_planta_624x351_thinstock_nocredit.jpg','Lorem ipsum dolor sit amet, consectetuer adipiscing',to_date('1907-09-30','YYYY/MM/DD'));
INSERT INTO Postagem (ID,ID_Perfil,Url_img,Descricao,Data) VALUES (99999981,99999998,'https://ichef.bbci.co.uk/news/ws/624/amz/worldservice/live/assets/images/2015/11/26/151126130740_planta_624x351_thinstock_nocredit.jpg','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer',to_date('1907-09-30','YYYY/MM/DD'));
INSERT INTO Postagem (ID,ID_Perfil,Url_img,Descricao,Data) VALUES (99999982,99999997,'https://ichef.bbci.co.uk/news/ws/624/amz/worldservice/live/assets/images/2015/11/26/151126130740_planta_624x351_thinstock_nocredit.jpg','Lorem ipsum dolor sit',to_date('1907-09-30','YYYY/MM/DD'));
INSERT INTO Postagem (ID,ID_Perfil,Url_img,Descricao,Data) VALUES (99999983,99999998,'https://ichef.bbci.co.uk/news/ws/624/amz/worldservice/live/assets/images/2015/11/26/151126130740_planta_624x351_thinstock_nocredit.jpg','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed',to_date('1907-09-30','YYYY/MM/DD'));
INSERT INTO Postagem (ID,ID_Perfil,Url_img,Descricao,Data) VALUES (99999984,99999998,'https://ichef.bbci.co.uk/news/ws/624/amz/worldservice/live/assets/images/2015/11/26/151126130740_planta_624x351_thinstock_nocredit.jpg','Lorem',to_date('1907-09-30','YYYY/MM/DD'));
INSERT INTO Postagem (ID,ID_Perfil,Url_img,Descricao,Data) VALUES (99999985,99999999,'https://ichef.bbci.co.uk/news/ws/624/amz/worldservice/live/assets/images/2015/11/26/151126130740_planta_624x351_thinstock_nocredit.jpg','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer',to_date('1907-09-30','YYYY/MM/DD'));
INSERT INTO Postagem (ID,ID_Perfil,Url_img,Descricao,Data) VALUES (99999986,99999997,'https://ichef.bbci.co.uk/news/ws/624/amz/worldservice/live/assets/images/2015/11/26/151126130740_planta_624x351_thinstock_nocredit.jpg','Lorem ipsum dolor sit',to_date('1907-09-30','YYYY/MM/DD'));
INSERT INTO Postagem (ID,ID_Perfil,Url_img,Descricao,Data) VALUES (99999987,99999999,'https://ichef.bbci.co.uk/news/ws/624/amz/worldservice/live/assets/images/2015/11/26/151126130740_planta_624x351_thinstock_nocredit.jpg','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna',to_date('1907-09-30','YYYY/MM/DD'));
INSERT INTO Postagem (ID,ID_Perfil,Url_img,Descricao,Data) VALUES (99999988,99999997,'https://ichef.bbci.co.uk/news/ws/624/amz/worldservice/live/assets/images/2015/11/26/151126130740_planta_624x351_thinstock_nocredit.jpg','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer',to_date('1907-09-30','YYYY/MM/DD'));
INSERT INTO Postagem (ID,ID_Perfil,Url_img,Descricao,Data) VALUES (99999989,99999998,'https://ichef.bbci.co.uk/news/ws/624/amz/worldservice/live/assets/images/2015/11/26/151126130740_planta_624x351_thinstock_nocredit.jpg','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna',to_date('1907-09-30','YYYY/MM/DD'));
INSERT INTO Postagem (ID,ID_Perfil,Url_img,Descricao,Data) VALUES (99999971,99999999,'https://ichef.bbci.co.uk/news/ws/624/amz/worldservice/live/assets/images/2015/11/26/151126130740_planta_624x351_thinstock_nocredit.jpg','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut',to_date('1907-09-30','YYYY/MM/DD'));
INSERT INTO Postagem (ID,ID_Perfil,Url_img,Descricao,Data) VALUES (99999972,99999997,'https://ichef.bbci.co.uk/news/ws/624/amz/worldservice/live/assets/images/2015/11/26/151126130740_planta_624x351_thinstock_nocredit.jpg','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam',to_date('1907-09-30','YYYY/MM/DD'));
INSERT INTO Postagem (ID,ID_Perfil,Url_img,Descricao,Data) VALUES (99999973,99999998,'https://ichef.bbci.co.uk/news/ws/624/amz/worldservice/live/assets/images/2015/11/26/151126130740_planta_624x351_thinstock_nocredit.jpg','Lorem ipsum dolor',to_date('1907-09-30','YYYY/MM/DD'));
INSERT INTO Postagem (ID,ID_Perfil,Url_img,Descricao,Data) VALUES (99999974,99999998,'https://ichef.bbci.co.uk/news/ws/624/amz/worldservice/live/assets/images/2015/11/26/151126130740_planta_624x351_thinstock_nocredit.jpg','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur',to_date('1907-09-30','YYYY/MM/DD'));
INSERT INTO Postagem (ID,ID_Perfil,Url_img,Descricao,Data) VALUES (99999975,99999997,'https://ichef.bbci.co.uk/news/ws/624/amz/worldservice/live/assets/images/2015/11/26/151126130740_planta_624x351_thinstock_nocredit.jpg','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna',to_date('1907-09-30','YYYY/MM/DD'));
INSERT INTO Postagem (ID,ID_Perfil,Url_img,Descricao,Data) VALUES (99999976,99999997,'https://ichef.bbci.co.uk/news/ws/624/amz/worldservice/live/assets/images/2015/11/26/151126130740_planta_624x351_thinstock_nocredit.jpg','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer',to_date('1907-09-30','YYYY/MM/DD'));
INSERT INTO Postagem (ID,ID_Perfil,Url_img,Descricao,Data) VALUES (99999977,99999998,'https://ichef.bbci.co.uk/news/ws/624/amz/worldservice/live/assets/images/2015/11/26/151126130740_planta_624x351_thinstock_nocredit.jpg','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu',to_date('1907-09-30','YYYY/MM/DD'));
INSERT INTO Postagem (ID,ID_Perfil,Url_img,Descricao,Data) VALUES (99999978,99999997,'https://ichef.bbci.co.uk/news/ws/624/amz/worldservice/live/assets/images/2015/11/26/151126130740_planta_624x351_thinstock_nocredit.jpg','Lorem ipsum dolor sit amet,',to_date('1907-09-30','YYYY/MM/DD'));
INSERT INTO Postagem (ID,ID_Perfil,Url_img,Descricao,Data) VALUES (99999979,99999999,'https://ichef.bbci.co.uk/news/ws/624/amz/worldservice/live/assets/images/2015/11/26/151126130740_planta_624x351_thinstock_nocredit.jpg','Lorem ipsum dolor sit amet,',to_date('1907-09-30','YYYY/MM/DD'));
INSERT INTO Postagem (ID,ID_Perfil,Url_img,Descricao,Data) VALUES (99999961,99999997,'https://ichef.bbci.co.uk/news/ws/624/amz/worldservice/live/assets/images/2015/11/26/151126130740_planta_624x351_thinstock_nocredit.jpg','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer',to_date('1907-09-30','YYYY/MM/DD'));
INSERT INTO Postagem (ID,ID_Perfil,Url_img,Descricao,Data) VALUES (99999962,99999999,'https://ichef.bbci.co.uk/news/ws/624/amz/worldservice/live/assets/images/2015/11/26/151126130740_planta_624x351_thinstock_nocredit.jpg','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et',to_date('1907-09-30','YYYY/MM/DD'));
INSERT INTO Postagem (ID,ID_Perfil,Url_img,Descricao,Data) VALUES (99999963,99999998,'https://ichef.bbci.co.uk/news/ws/624/amz/worldservice/live/assets/images/2015/11/26/151126130740_planta_624x351_thinstock_nocredit.jpg','Lorem ipsum',to_date('1907-09-30','YYYY/MM/DD'));
INSERT INTO Postagem (ID,ID_Perfil,Url_img,Descricao,Data) VALUES (99999964,99999998,'https://ichef.bbci.co.uk/news/ws/624/amz/worldservice/live/assets/images/2015/11/26/151126130740_planta_624x351_thinstock_nocredit.jpg','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing',to_date('1907-09-30','YYYY/MM/DD'));
INSERT INTO Postagem (ID,ID_Perfil,Url_img,Descricao,Data) VALUES (99999965,99999997,'https://ichef.bbci.co.uk/news/ws/624/amz/worldservice/live/assets/images/2015/11/26/151126130740_planta_624x351_thinstock_nocredit.jpg','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer',to_date('1907-09-30','YYYY/MM/DD'));

INSERT INTO Curtida (ID,DATA,ID_POSTAGEM,ID_PERFIL) VALUES (99999991,SYSDATE,99999965,99999999);
INSERT INTO Curtida (ID,DATA,ID_POSTAGEM,ID_PERFIL) VALUES (99999992,SYSDATE,99999991,99999999);
INSERT INTO Curtida (ID,DATA,ID_POSTAGEM,ID_PERFIL) VALUES (99999993,SYSDATE,99999992,99999999);
INSERT INTO Curtida (ID,DATA,ID_POSTAGEM,ID_PERFIL) VALUES (99999994,SYSDATE,99999994,99999999);
INSERT INTO Curtida (ID,DATA,ID_POSTAGEM,ID_PERFIL) VALUES (99999995,SYSDATE,99999995,99999999);
INSERT INTO Curtida (ID,DATA,ID_POSTAGEM,ID_PERFIL) VALUES (99999996,SYSDATE,99999982,99999999);

INSERT INTO Curtida (ID,DATA,ID_POSTAGEM,ID_PERFIL) VALUES (99999997,SYSDATE,99999997,99999997);
INSERT INTO Curtida (ID,DATA,ID_POSTAGEM,ID_PERFIL) VALUES (99999998,SYSDATE,99999999,99999997);
INSERT INTO Curtida (ID,DATA,ID_POSTAGEM,ID_PERFIL) VALUES (99999999,SYSDATE,99999985,99999997);
INSERT INTO Curtida (ID,DATA,ID_POSTAGEM,ID_PERFIL) VALUES (99999981,SYSDATE,99999987,99999997);
INSERT INTO Curtida (ID,DATA,ID_POSTAGEM,ID_PERFIL) VALUES (99999982,SYSDATE,99999971,99999997);

INSERT INTO Comentario (ID,DATA,ID_POSTAGEM,ID_PERFIL,TEXTO) VALUES (99999991,SYSDATE,99999965,99999999,'haha');
INSERT INTO Comentario (ID,DATA,ID_POSTAGEM,ID_PERFIL,TEXTO) VALUES (99999992,SYSDATE,99999991,99999999,'kkk');
INSERT INTO Comentario (ID,DATA,ID_POSTAGEM,ID_PERFIL,TEXTO) VALUES (99999993,SYSDATE,99999992,99999999,'perfeito');
INSERT INTO Comentario (ID,DATA,ID_POSTAGEM,ID_PERFIL,TEXTO) VALUES (99999994,SYSDATE,99999994,99999999,'curti');
INSERT INTO Comentario (ID,DATA,ID_POSTAGEM,ID_PERFIL,TEXTO) VALUES (99999995,SYSDATE,99999995,99999999,'amei');
INSERT INTO Comentario (ID,DATA,ID_POSTAGEM,ID_PERFIL,TEXTO) VALUES (99999996,SYSDATE,99999982,99999999,'ehuehuehuehue');

INSERT INTO Comentario (ID,DATA,ID_POSTAGEM,ID_PERFIL,TEXTO) VALUES (99999997,SYSDATE,99999997,99999997,'coment�rio construtivo');
INSERT INTO Comentario (ID,DATA,ID_POSTAGEM,ID_PERFIL,TEXTO) VALUES (99999998,SYSDATE,99999999,99999997,'o mundo � dos nets');
INSERT INTO Comentario (ID,DATA,ID_POSTAGEM,ID_PERFIL,TEXTO) VALUES (99999999,SYSDATE,99999985,99999997,'fsafasda');
INSERT INTO Comentario (ID,DATA,ID_POSTAGEM,ID_PERFIL,TEXTO) VALUES (99999981,SYSDATE,99999987,99999997,'a vida');
INSERT INTO Comentario (ID,DATA,ID_POSTAGEM,ID_PERFIL,TEXTO) VALUES (99999982,SYSDATE,99999971,99999997,'ehuehueheu');

Select * From Estado;
Select * From Usuario;
Select * From Perfil;
Select * From Relacionamento;
Select * From Postagem;
Select * From Curtida;
Select * From Comentario;