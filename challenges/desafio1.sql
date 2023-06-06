DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE IF NOT EXISTS SpotifyClone;
USE SpotifyClone;

CREATE TABLE planos (
    plano_id INT PRIMARY KEY AUTO_INCREMENT,
    plano VARCHAR(30) NOT NULL,
    valor_plano	DOUBLE NOT NULL
);

CREATE TABLE artistas 
(
    artista_id	INT PRIMARY KEY AUTO_INCREMENT,
    artista_nome	VARCHAR(100) NOT NULL
);

CREATE TABLE usuarios 
(
    usuario_id	INT PRIMARY KEY AUTO_INCREMENT,
    usuario_nome	VARCHAR(100) NOT NULL,
    usuario_idade	INT NOT NULL,
    plano_id	INT NOT NULL,
    data_assinatura	DATE NOT NULL,
    FOREIGN KEY (plano_id) REFERENCES planos (plano_id)
);

CREATE TABLE artista_seguidores 
(
    usuario_id	INT NOT NULL,
    artista_id	INT NOT NULL,
    CONSTRAINT PRIMARY KEY(usuario_id, artista_id),
    FOREIGN KEY (usuario_id) REFERENCES usuarios (usuario_id),
    FOREIGN KEY (artista_id) REFERENCES artistas (artista_id)
);

CREATE TABLE albuns 
(
    album_id	INT PRIMARY KEY AUTO_INCREMENT,
    album_nome	VARCHAR(100) NOT NULL,
    ano_lancamento	YEAR NOT NULL,
    artista_id	INT NOT NULL,
    FOREIGN KEY (artista_id) REFERENCES artistas (artista_id)
);

CREATE TABLE cancoes 
(
    cancao_id	INT PRIMARY KEY AUTO_INCREMENT,
    nome_cancao	VARCHAR(100) NOT NULL,
    duracao_segundos	INT NOT NULL,
    album_id	INT NOT NULL,
    FOREIGN KEY (album_id) REFERENCES albuns (album_id)
);

CREATE TABLE musicas_escutadas 
(
    usuario_id	INT NOT NULL,
    cancao_id	INT NOT NULL,
    data_reproducao	DATETIME NOT NULL,
    CONSTRAINT PRIMARY KEY(usuario_id, cancao_id),
    FOREIGN KEY (usuario_id) REFERENCES usuarios (usuario_id),
    FOREIGN KEY (cancao_id) REFERENCES cancoes (cancao_id)
);

INSERT INTO planos (plano, valor_plano) VALUES ('gratuito', '0');
INSERT INTO planos (plano, valor_plano) VALUES ('familiar', '7.99');
INSERT INTO planos (plano, valor_plano) VALUES ('universitário', '5.99');
INSERT INTO planos (plano, valor_plano) VALUES ('pessoal', '6.99');

INSERT INTO artistas (artista_nome) VALUES ('Beyoncé');
INSERT INTO artistas (artista_nome) VALUES ('Queen');
INSERT INTO artistas (artista_nome) VALUES ('Elis Regina');
INSERT INTO artistas (artista_nome) VALUES ('Baco Exu do Blues');
INSERT INTO artistas (artista_nome) VALUES ('Blind Guardian');
INSERT INTO artistas (artista_nome) VALUES ('Nina Simone');

INSERT INTO usuarios (usuario_nome, usuario_idade, plano_id, data_assinatura) VALUES ('Barbara Liskov', '82', '1', '2019-10-20');
INSERT INTO usuarios (usuario_nome, usuario_idade, plano_id, data_assinatura) VALUES ('Robert Cecil Martin', '58', '1', '2017-01-06');
INSERT INTO usuarios (usuario_nome, usuario_idade, plano_id, data_assinatura) VALUES ('Ada Lovelace', '37', '2', '2017-12-30');
INSERT INTO usuarios (usuario_nome, usuario_idade, plano_id, data_assinatura) VALUES ('Martin Fowler', '46', '2', '2017-01-17');
INSERT INTO usuarios (usuario_nome, usuario_idade, plano_id, data_assinatura) VALUES ('Sandi Metz', '58', '2', '2018-04-29');
INSERT INTO usuarios (usuario_nome, usuario_idade, plano_id, data_assinatura) VALUES ('Paulo Freire', '19', '3', '2018-02-14');
INSERT INTO usuarios (usuario_nome, usuario_idade, plano_id, data_assinatura) VALUES ('Bell Hooks', '26', '3', '2018-01-05');
INSERT INTO usuarios (usuario_nome, usuario_idade, plano_id, data_assinatura) VALUES ('Christopher Alexander', '85', '3', '2019-06-05');
INSERT INTO usuarios (usuario_nome, usuario_idade, plano_id, data_assinatura) VALUES ('Judith Butler', '45', '4', '2020-05-13');
INSERT INTO usuarios (usuario_nome, usuario_idade, plano_id, data_assinatura) VALUES ( 'Jorge Amado', '58', '4', '2017-02-17');

INSERT INTO artista_seguidores (usuario_id, artista_id) VALUES ('1', '1');
INSERT INTO artista_seguidores (usuario_id, artista_id) VALUES ('1', '2');
INSERT INTO artista_seguidores (usuario_id, artista_id) VALUES ('1', '3');
INSERT INTO artista_seguidores (usuario_id, artista_id) VALUES ('2', '1');
INSERT INTO artista_seguidores (usuario_id, artista_id) VALUES ('2', '3');
INSERT INTO artista_seguidores (usuario_id, artista_id) VALUES ('3', '2');
INSERT INTO artista_seguidores (usuario_id, artista_id) VALUES ('4', '4');
INSERT INTO artista_seguidores (usuario_id, artista_id) VALUES ('5', '5');
INSERT INTO artista_seguidores (usuario_id, artista_id) VALUES ('5', '6');
INSERT INTO artista_seguidores (usuario_id, artista_id) VALUES ('6', '1');
INSERT INTO artista_seguidores (usuario_id, artista_id) VALUES ('6', '6');
INSERT INTO artista_seguidores (usuario_id, artista_id) VALUES ('7', '6');
INSERT INTO artista_seguidores (usuario_id, artista_id) VALUES ('9', '3');
INSERT INTO artista_seguidores (usuario_id, artista_id) VALUES ('10', '2');

INSERT INTO albuns (album_nome, ano_lancamento, artista_id) VALUES ('Renaissance', '2022', '1');
INSERT INTO albuns (album_nome, ano_lancamento, artista_id) VALUES ('Jazz', '1978', '2');
INSERT INTO albuns (album_nome, ano_lancamento, artista_id) VALUES ('Hot Space', '1982', '2');
INSERT INTO albuns (album_nome, ano_lancamento, artista_id) VALUES ('Falso Brilhante', '1998', '3');
INSERT INTO albuns (album_nome, ano_lancamento, artista_id) VALUES ('Vento de Maio', '2001', '3');
INSERT INTO albuns (album_nome, ano_lancamento, artista_id) VALUES ('QVVJFA?', '2003', '4');
INSERT INTO albuns (album_nome, ano_lancamento, artista_id) VALUES ('Somewhere Far Beyond', '2007', '5');
INSERT INTO albuns (album_nome, ano_lancamento, artista_id) VALUES ('I Put A Spell On You', '2012', '6');

INSERT INTO cancoes (nome_cancao, duracao_segundos, album_id) VALUES ('BREAK MY SOUL', '279', '1');
INSERT INTO cancoes (nome_cancao, duracao_segundos, album_id) VALUES ('VIRGO\'S GROOVE', '369', '1');
INSERT INTO cancoes (nome_cancao, duracao_segundos, album_id) VALUES ('ALIEN SUPERSTAR', '116', '1');
INSERT INTO cancoes (nome_cancao, duracao_segundos, album_id) VALUES ('Don\'t Stop Me Now', '203', '2');
INSERT INTO cancoes (nome_cancao, duracao_segundos, album_id) VALUES ('Under Pressure', '152', '3');
INSERT INTO cancoes (nome_cancao, duracao_segundos, album_id) VALUES ('Como Nossos Pais', '105', '4');
INSERT INTO cancoes (nome_cancao, duracao_segundos, album_id) VALUES ('O Medo de Amar é o Medo de Ser Livre', '207', '5');
INSERT INTO cancoes (nome_cancao, duracao_segundos, album_id) VALUES ('Samba em Paris', '267', '6');
INSERT INTO cancoes (nome_cancao, duracao_segundos, album_id) VALUES ('The Bard\'s Song', '244', '7');
INSERT INTO cancoes (nome_cancao, duracao_segundos, album_id) VALUES ('Feeling Good', '100', '8');

INSERT INTO musicas_escutadas (usuario_id, cancao_id, data_reproducao) VALUES ('1', '8', '2022-02-28 10:45:55');
INSERT INTO musicas_escutadas (usuario_id, cancao_id, data_reproducao) VALUES ('1', '2', '2020-05-02 05:30:35');
INSERT INTO musicas_escutadas (usuario_id, cancao_id, data_reproducao) VALUES ('1', '10', '2020-03-06 11:22:33');
INSERT INTO musicas_escutadas (usuario_id, cancao_id, data_reproducao) VALUES ('2', '10', '2022-08-05 08:05:17');
INSERT INTO musicas_escutadas (usuario_id, cancao_id, data_reproducao) VALUES ('2', '7', '2020-01-02 07:40:33');
INSERT INTO musicas_escutadas (usuario_id, cancao_id, data_reproducao) VALUES ('3', '10', '2020-11-13 16:55:13');
INSERT INTO musicas_escutadas (usuario_id, cancao_id, data_reproducao) VALUES ('3', '2', '2020-12-05 18:38:30');
INSERT INTO musicas_escutadas (usuario_id, cancao_id, data_reproducao) VALUES ('4', '8', '2021-08-15 17:10:10');
INSERT INTO musicas_escutadas (usuario_id, cancao_id, data_reproducao) VALUES ('5', '8', '2022-01-09 01:44:33');
INSERT INTO musicas_escutadas (usuario_id, cancao_id, data_reproducao) VALUES ('5', '5', '2020-08-06 15:23:43');
INSERT INTO musicas_escutadas (usuario_id, cancao_id, data_reproducao) VALUES ('6', '7', '2017-01-24 00:31:17');
INSERT INTO musicas_escutadas (usuario_id, cancao_id, data_reproducao) VALUES ('6', '1', '2017-10-12 12:35:20');
INSERT INTO musicas_escutadas (usuario_id, cancao_id, data_reproducao) VALUES ('7', '4', '2011-12-15 22:30:49');
INSERT INTO musicas_escutadas (usuario_id, cancao_id, data_reproducao) VALUES ('8', '4', '2012-03-17 14:56:41');
INSERT INTO musicas_escutadas (usuario_id, cancao_id, data_reproducao) VALUES ('9', '9', '2022-02-24 21:14:22');
INSERT INTO musicas_escutadas (usuario_id, cancao_id, data_reproducao) VALUES ('10', '3', '2015-12-13 08:30:22');

