create database corinthians;
		
use corinthians;	

create table Usuário(
idUsuario int primary key auto_increment,
Nome varchar(45),
Sobrenome varchar(45),
email varchar(45),
senha varchar(45));

create table quiz(
idQuiz int primary key auto_increment,
fkUsuario int,
Aproveitamento int,
QtdAcertos int,
foreign key (fkUsuario) references Usuário (idUsuario)
);

create table opiniões(
idOpiniões int auto_increment,
fkUsuário int, 
Opinião varchar(300),
primary key(idOpiniões, fkUsuário),
foreign key (fkUsuário) references Usuário (idUsuario));

create table Pergunta(
fkQuiz int, 
idPergunta int,
primary key(fkQuiz, idPergunta),
Pergunta varchar(45));

create table RespostaUsuario (
    fkUsuario int,
    fkQuiz int,
    fkPergunta int,
    primary key (fkUsuario, fkQuiz, fkPergunta),
    foreign key(fkQuiz) references Pergunta(fkQuiz),
    foreign key (fkUsuario) references Usuário(idUsuario),
    foreign key (fkPergunta) references Pergunta(idPergunta)
);
