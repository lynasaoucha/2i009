@jo_v1
@liste
/*SELECT * FROM tab;*/
DESC Athlete;
DESC RangEpreuve;
SELECT * FROM Athlete;
SELECT COUNT(*) FROM Athlete;
SELECT nom,prenom FROM Athlete WHERE pays ='Inde';
SELECT prenom FROM Athlete WHERE nom = 'GOLD';
SELECT pays FROM Athlete WHERE nom = 'AONO' AND prenom = 'Ryo';
SELECT nomAth,prenomAth FROM RangEpreuve WHERE rang = 1 ORDER BY sport,epreuve;
SELECT distinct sport,epreuve,categorie,dateFin FROM RangEpreuve ORDER BY dateFin;
SELECT * FROM Athlete WHERE extract(year from dateNaissance) BETWEEN 1990 AND 1995 and pays='France';
SELECT a.nom,a.prenom FROM RangEpreuve r,Athlete a WHERE r.sport ='Biathlon' AND a.pays ='Suisse' and r.rang is null AND a.nom = r.nomAth AND a.prenom = r.prenomAth;
SELECT distinct r.sport,r.epreuve,r.categorie FROM RangEpreuve r, RangEpreuve compare WHERE r.nomAth <> compare.nomAth and r.prenomAth <> compare.nomAth and r.sport = compare.sport and r.epreuve = compare.epreuve  and r.categorie = compare.categorie AND r.rang = 1 AND compare.rang = 1;
