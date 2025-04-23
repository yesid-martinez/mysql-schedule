CREATE TABLE Programa (
    Codi_Prog INT AUTO_INCREMENT PRIMARY KEY,
    Nomb_Prog VARCHAR(255) NOT NULL
);

CREATE TABLE Pensum (
    Codi_Prog INT,
    Codi_Pens INT,
    Desc_Pens VARCHAR(255) NOT NULL,
    PRIMARY KEY (Codi_Prog, Codi_Pens),
    FOREIGN KEY (Codi_Prog) REFERENCES Programa(Codi_Prog)
);

CREATE TABLE Asignaturas (
    Codi_Asig INT PRIMARY KEY,
    Nomb_Asig VARCHAR(255) NOT NULL,
    Nive_Asig VARCHAR(255) NOT NULL,
    Hora_Asig TIME NOT NULL,
    Codi_Prog INT NOT NULL,
    Codi_Pens INT NOT NULL,
    FOREIGN KEY (Codi_Prog, Codi_Pens) REFERENCES Pensum(Codi_Prog, Codi_Pens)
);

CREATE TABLE Ciudades (
    Codi_Ciud INT PRIMARY KEY,
    Nomb_Ciud VARCHAR(255)
);

CREATE TABLE Sedes (
    Codi_Ciud INT,
    Codi_Sede INT,
    Nomb_Sede VARCHAR(255),
    PRIMARY KEY (Codi_Ciud, Codi_Sede),
    FOREIGN KEY (Codi_Ciud) REFERENCES Ciudades(Codi_Ciud)
);

CREATE TABLE Bloques (
    Codi_Ciud INT,
    Codi_Sede INT,
    Codi_Bloq INT,
    Nomb_Bloq VARCHAR(255),
    PRIMARY KEY (Codi_Ciud, Codi_Sede, Codi_Bloq),
    FOREIGN KEY (Codi_Ciud, Codi_Sede) REFERENCES Sedes(Codi_Ciud, Codi_Sede)
);

CREATE TABLE TipoAula (
    Tipo_Aula INT PRIMARY KEY,
    Desc_Tipo VARCHAR(255)
);

CREATE TABLE Aulas (
    Codi_Ciud INT,
    Codi_Sede INT,
    Codi_Bloq INT,
    Codi_Aula INT,
    Capa_Aula INT,
    Tipo_Aula INT,
    PRIMARY KEY (Codi_Ciud, Codi_Sede, Codi_Bloq, Codi_Aula),
    FOREIGN KEY (Codi_Ciud) REFERENCES Ciudades(Codi_Ciud),
    FOREIGN KEY (Codi_Sede, Codi_Ciud) REFERENCES Sedes(Codi_Ciud, Codi_Sede),
    FOREIGN KEY (Codi_Bloq, Codi_Sede, Codi_Ciud) REFERENCES Bloques(Codi_Ciud, Codi_Sede, Codi_Bloq),
    FOREIGN KEY (Tipo_Aula) REFERENCES TipoAula(Tipo_Aula)
);

CREATE TABLE Docente (
    Iden_Doce INT PRIMARY KEY,
    Apel_Doce VARCHAR(255),
    Nomb_Doce VARCHAR(255)
);

CREATE TABLE Estudiantes (
    Codi_Estu INT PRIMARY KEY,
    Iden_Estu VARCHAR(255),
    Apel_Estu VARCHAR(255),
    Nomb_Estu VARCHAR(255),
    Codi_Prog INT,
    Codi_Pens INT,
    FOREIGN KEY (Codi_Prog, Codi_Pens) REFERENCES Pensum(Codi_Prog, Codi_Pens)
);

CREATE TABLE Enca_Hora (
    Codi_Estu INT,
    Peri_Hora INT,
    PRIMARY KEY (Codi_Estu, Peri_Hora)
);

CREATE TABLE Enca2_Hora (
    Codi_Estu INT,
    Peri_Hora TIME,
    Codi_Aisg INT,
    Dia_Asig INT,
    Hora_Inic TIME,
    Hora_Fina TIME,
    Iden_Doce INT,
    Grup_Asig INT,
    Subg_Asig INT,
    Codi_Ciud INT,
    Codi_Sede INT,
    Codi_Bloq INT,
    Codi_Aula INT,
    PRIMARY KEY (Codi_Estu, Peri_Hora, Dia_Asig, Hora_Inic),
    FOREIGN KEY (Codi_Estu) REFERENCES Estudiantes(Codi_Estu),
    FOREIGN KEY (Iden_Doce) REFERENCES Docente(Iden_Doce),
    FOREIGN KEY (Codi_Ciud, Codi_Sede, Codi_Bloq, Codi_Aula) REFERENCES Aulas(Codi_Ciud, Codi_Sede, Codi_Bloq, Codi_Aula)
);


