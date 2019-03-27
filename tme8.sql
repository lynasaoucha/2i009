#TD 8 - EXERCICE 1
-- question 1
CREATE TABLE Employe(
	NumSS number(5),
	NomE varchar2(20),
	PrenomE varchar2(20),
	NumChef number(5),
	VilleE varchar2(20),
	DateNaiss date ,
	DateEnreg date DEFAULT SYSDATE,
	CONSTRAINT Pk_emp PRIMARY KEY (NumSS),
	CONSTRAINT Fk_emp_chef FOREIGN KEY (NumChef) REFERENCES Employe,
	CONSTRAINT limite_age CHECK ((DateEnreg - DateNaiss)/365 <= 70),
	CONSTRAINT format_newSS CHECK (length (NumSS)=5), 
	CONSTRAINT ville_emp CHECK (lower(VilleE) IN ('Paris','Lyon','Marseille')),
	CONSTRAINT nom_prenom_unique UNIQUE (NomE,PrenomE),
);

CREATE TABLE Projet(
	NumProj number(17),
	NomProj
	RespProj NOT NULL
	VilleP 
	Budget

	CONSTRAINT Pk_proj PRIMARY KEY (NumProj),
	CONSTRAINT Fk_proj_resp FOREIGN KEY (RespProj),
	CONSTRAINT 
	)

CREATE ASSERTION Ville_Proj_Resp
	CHECK (NOT EXISTS (SELECT * FROM Employe e, Projet p WHERE P.RespProj = e.NumSS and P.Ville <> e.VilleE));