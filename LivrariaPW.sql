CREATE DATABASE Livraria_PW;
USE Livraria_PW;

CREATE TABLE editora (
    id_edi INT PRIMARY KEY AUTO_INCREMENT,
    nome_edi VARCHAR(300),
    fundador_edi VARCHAR(300),
    email_edi VARCHAR(300),
    senha_edi INT,
    link_social_edi VARCHAR(300),
    sede_edi VARCHAR(300),
    isnb_edi VARCHAR(300),
    genero_literario_edi VARCHAR(300),
    contato_edi VARCHAR(300)
);

CREATE TABLE autores (
    id_aut INT PRIMARY KEY AUTO_INCREMENT,
    nome_aut VARCHAR(300),
    sobrenome_aut VARCHAR(300),
    email_aut VARCHAR(300),
    senha_aut INT,
    link_social_aut VARCHAR(300),
    cidade_aut VARCHAR(300),
    cpf_aut VARCHAR(300),
    editora_aut VARCHAR(300),
    contato_aut VARCHAR(200)
);

CREATE TABLE acervo (
    id_ace INT PRIMARY KEY AUTO_INCREMENT,
    titulo_ace VARCHAR(300),
    autor_ace VARCHAR(300),
    genero_ace VARCHAR(300),
    editora_ace VARCHAR(300),
    palavra_chave_ace VARCHAR(300),
    idioma_ace VARCHAR(300),
    descricao_ace VARCHAR(300),
    data_publicacao_ace DATE,
    paginas_ace INT,
    id_edi_fk INT,
    FOREIGN KEY (id_edi_fk) REFERENCES editora (id_edi)
);

CREATE TABLE livros (
    id_liv INT PRIMARY KEY AUTO_INCREMENT,
    nome_liv VARCHAR(300),
    genero_liv VARCHAR(300),
    data_publicacao_liv DATE,
    idioma_original_liv VARCHAR(300),
    autor_liv VARCHAR(300),
    editora_liv VARCHAR(300),
    paginas_liv INT,
    preco_liv DOUBLE,
    idade_leitura_liv INT,
    id_ace_fk INT,
    id_edi_fk INT,
    FOREIGN KEY (id_ace_fk) REFERENCES acervo (id_ace),
    FOREIGN KEY (id_edi_fk) REFERENCES editora (id_edi)
);

 CREATE TABLE funcionario(
id_fun int primary key auto_increment,
email_fun varchar(300),
senha_fun varchar(300),
nome_fun varchar(300),
cpf_fun varchar(300),
sexo_fun varchar(200),
data_nascimento_fun date,
estado_fun varchar(300)
 );
 
CREATE TABLE usuario (
    id_usu INT PRIMARY KEY AUTO_INCREMENT,
    nome_completo_usu VARCHAR(300),
    email_usu VARCHAR(300),
    senha_usu INT,
    cpf_usu VARCHAR(300),
    genero_usu VARCHAR(100),
    estado_usu VARCHAR(200),
    data_nascimento_usu DATE,
    estado_civil_usu VARCHAR(200)
);

CREATE TABLE login (
    id_log INT PRIMARY KEY AUTO_INCREMENT,
    email_log VARCHAR(300),
    senha_log INT
);