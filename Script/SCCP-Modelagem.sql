CREATE DATABASE SCCP;

USE SCCP;

CREATE TABLE Usuario (
    idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(45) NOT NULL,
    senha VARCHAR(45) NOT NULL,
    nome VARCHAR(45),
    jogadorpref VARCHAR(45)
);

CREATE TABLE Quiz (
    idQuiz INT PRIMARY KEY AUTO_INCREMENT,
    nomequiz VARCHAR(45)
);

CREATE TABLE QuizPontuacao (
    Quiz_idQuiz INT,
    Usuario_idUsuario INT,
    pontuacao VARCHAR(45),
    dtQuiz DATE,
    PRIMARY KEY (Quiz_idQuiz, Usuario_idUsuario, dtQuiz),
    FOREIGN KEY (Quiz_idQuiz) REFERENCES Quiz(idQuiz),
    FOREIGN KEY (Usuario_idUsuario) REFERENCES Usuario(idUsuario)
);
