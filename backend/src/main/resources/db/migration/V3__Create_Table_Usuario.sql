CREATE SEQUENCE usuario_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
CREATE TABLE usuario (
	id int8 DEFAULT nextval('usuario_seq'::regclass) NOT NULL,
	ativo bool NOT NULL,
	cadastro_confirmado bool NOT NULL,
	email varchar(120) NOT NULL,
	estado varchar(2) NULL,
	funcao varchar(40) NULL,
	id_confirmacao_cadastro varchar(30) NULL,
	nome varchar(25) NOT NULL,
	qtd_login_incorreto int4 NOT NULL,
	senha varchar(60) NOT NULL,
	id_perfil int8 NOT NULL,
	CONSTRAINT usuario_id_pkey PRIMARY KEY (id),
	CONSTRAINT fk_usuario_perfil FOREIGN KEY (id_perfil) REFERENCES perfil(id)
);