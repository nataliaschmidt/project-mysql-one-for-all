USE SpotifyClone;
CREATE TABLE musicas_favoritas 
(
    usuario_id	INT NOT NULL,
    cancao_id	INT NOT NULL,
    CONSTRAINT PRIMARY KEY(usuario_id, cancao_id),
    FOREIGN KEY (usuario_id) REFERENCES usuarios (usuario_id),
    FOREIGN KEY (cancao_id) REFERENCES cancoes (cancao_id)
);

INSERT INTO musicas_favoritas (usuario_id, cancao_id) VALUES ('1', '3');
INSERT INTO musicas_favoritas (usuario_id, cancao_id) VALUES ('1', '6');
INSERT INTO musicas_favoritas (usuario_id, cancao_id) VALUES ('1', '10');
INSERT INTO musicas_favoritas (usuario_id, cancao_id) VALUES ('2', '4');
INSERT INTO musicas_favoritas (usuario_id, cancao_id) VALUES ('3', '1');
INSERT INTO musicas_favoritas (usuario_id, cancao_id) VALUES ('3', '3');
INSERT INTO musicas_favoritas (usuario_id, cancao_id) VALUES ('4', '7');
INSERT INTO musicas_favoritas (usuario_id, cancao_id) VALUES ('4', '4');
INSERT INTO musicas_favoritas (usuario_id, cancao_id) VALUES ('5', '10');
INSERT INTO musicas_favoritas (usuario_id, cancao_id) VALUES ('5', '2');
INSERT INTO musicas_favoritas (usuario_id, cancao_id) VALUES ('8', '4');
INSERT INTO musicas_favoritas (usuario_id, cancao_id) VALUES ('9', '7');
INSERT INTO musicas_favoritas (usuario_id, cancao_id) VALUES ('10', '3');