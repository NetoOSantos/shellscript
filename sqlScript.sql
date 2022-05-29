create table empresa(
    idEmpresa int primary key auto_increment,
    cnpj char(18),
    nome varchar(50),
    email varchar (45),
    cep char(9),
    senha varchar(100)
) auto_increment 100;

CREATE TABLE FUNCIONARIO (
    idFuncionario INT PRIMARY KEY AUTO_INCREMENT,
    fkGestor Int,
    fkEmpresa Int,
    Nome varchar(50),
    EMAIL VARCHAR(50),
    SENHA VARCHAR(50),
    Cargo VARCHAR(50),
    foreign key (fkGestor) references FUNCIONARIO(idFuncionario),
    foreign key (fkEmpresa) references empresa(idEmpresa)
);

CREATE TABLE Maquina (
    idMaquina INT PRIMARY KEY AUTO_INCREMENT,
    fkUsuario INT,
    sistemaOperacional varchar(50),
    fabricante varchar(50),
    arquitetura int,
    hostName varchar(50),    
    permissoes varchar(50),
    foreign key (fkUsuario) references FUNCIONARIO(idFuncionario)
);

CREATE TABLE Processos (
    idProcesso INT PRIMARY KEY AUTO_INCREMENT,
    fkMaquina INT,
    PID INT,
    Nome varchar(45),
    usoCPU FLOAT,
    usoMemoria FLOAT,
    bytesUtilizados INT,
    memVirtualUtilizada FLOAT,
    totalProcessos int,
    threads int,
    dataHoraProcesso datetime,
    foreign key (fkMaquina) references Maquina(idMaquina)
);

CREATE TABLE ComponentesHardware (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    fkMaquina INT,
    nomeDisco varchar(45),
    tamanhoDisco FLOAT,
    modeloDisco varchar(100),
    qtdDiscos int,
    memoriaTotal FLOAT,
    processadorNome varchar(50),
    foreign key (fkMaquina) references Maquina(idMaquina)
);

CREATE TABLE Historico (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    fkMaquina INT,
    data Datetime,
    tempoInicializado varchar(45),
    tempoDeAtividade varchar(45),
    temperaturaAtual varchar(45),
    memoriaEmUso FLOAT,
    memoriaDisponivel FLOAT,
    processadorUso FLOAT,
    foreign key (fkMaquina) references Maquina(idMaquina)
);

INSERT INTO
    FUNCIONARIO
VALUES
    (
        null,
        NULL,
        NULL,
        "Bruno",
        "bruno@hotmail.com",
        '123',
        'Desenvolvedor'
    );
    
INSERT INTO FUNCIONARIO VALUES (null, 100, 'Gerson', 'Gerson@hotmail.com', '123', 'Gestor');    

INSERT INTO Maquina values(1,2,'Linux','GNU',64,'spNote','false');
    