@vider

CREATE TABLE Employe(
	NumSS number(5),
	NomE varchar2(20),
	PrenomE varchar2(20),
	NumChef number(5),
	VilleE varchar2(20),
	DateNaiss date ,
	DateEnreg date DEFAULT SYSDATE,
	CONSTRAINT pk_emp PRIMARY KEY (NumSS),
	CONSTRAINT fk_emp_chef FOREIGN KEY (NumChef) REFERENCES Employe,
	CONSTRAINT limite_age CHECK ((DateEnreg - DateNaiss)/365 <= 70),
	CONSTRAINT format_newSS CHECK (length (NumSS)=5), 
	CONSTRAINT ville_emp CHECK (lower(VilleE) IN ('paris','lyon','marseille')),
	CONSTRAINT nom_prenom_unique UNIQUE (NomE,PrenomE)
);

CREATE TABLE Projett(
	NumProj number(7),
	NomProj varchar2(20),
	RespProj number(5) NOT NULL,
	VilleP varchar2(9),
	Budget number(10),

	CONSTRAINT Pk_proj PRIMARY KEY (NumProj),
	CONSTRAINT Fk_proj_resp FOREIGN KEY (RespProj) references employe,
	CONSTRAINT num_Proj CHECK (length(NumProj)>=5 and length(numProj)<=7),
	CONSTRAINT ville_proj CHECK (lower(VilleP) IN ('paris','lyon','marseille'))
);


CREATE TABLE GRILLE_SAL(
       Profil varchar2(20),
       salaire number(5,2),
       CONSTRAINT pk_grille_sal primary key (profil),
       CONSTRAINT sal CHECK (salaire<90000 )
       );

CREATE TABLE EMBAUCHE(
       numSS number(5),
       NumProj number(7),
       DateEmb date,
       Profil varchar2(20),
       constraint pk_embauche primary key (numss,numproj),
       constraint fk_embauche foreign key (numss) references employe,
       constraint fk_numproj_embauche foreign key(numproj)references projett,
       constraint fk_profil_embauche foreign key (profil) references grille_sal
       );

SELECT table_name FROM user_tables;
       
INSERT INTO Employe VALUES('21456','LARS', 'Anna',null, 'paris', to_date('25-08- 1975'), sysdate);
--INSERT INTO Projet VALUES('3670404','TMESQL','21457','Paris','100000');

