@jo_v2
@vider


/*TD
-- question 5
select count(*) as nbCat from Catégorie;
-- question 6
select count(distinct idc) as nbCat from astre;
-- question 7
select min(rayon), max(rayon) from astre;
-- question 8
select round(avg(rayon/1000, 2) || "milliers km." from astre;
-- question 9
select max(rayon) from astre;
select nom, rayon from astre where rayon = (select max(rayon) from astre );
-- question 10
select a.idc, count(*) from astre a froup by a.idc order by count(*) desc;
-- question 11
select t.idA2, count(*) as nbastre from tourneautour t group by t.idA2 
select a.nom, count(*) as nbastre from tourneautour t, astre a where t;idA2=a.ida group by t.idA2, a.nom;
-- question 12
select a.nom o.dateObs, avg(valobs) from Observation o, astre a where a.ida=o.ida group by o.ida, o.dateObs, a.nom;
-- question 13
select idc, rayon from astre where rayon = select(max(rayon) from astre) group by idc order by r ; 
-- question 14
select idc from astre group by idc having count(*)>1;*/



-- TME - Exercice 1
-- question 1
select count(*) from athlete;
-- question 2
select count(distinct aid) from rangindividuel;
-- question 3
select round(avg(to_date('06/02/2014', 'dd/mm/YYYY')-a.dateNaissance)/365,1) from athlete a where codepays = 'FRA';
-- question 4
select 'Durée moyenne = '|| round(avg(dateFin-dateDebut+1),2) || 'min = ' || min(datefin-datedebut+1)|| 'max = '|| max(datefin-datedebut+1) from epreuve;
-- question 5
select count(aid)/count(distinct codepays) from athlete;
-- question 6
select codepays, count(aid) from athlete group by codepays order by 2;
-- question 7
select avg(count(aid)) from athlete group by codepays;
-- question 8
select eqid, count(aid) from athletesequipe group by eqid order by 2 desc;
-- question 9
select e.categorie, count(*) from epreuve e group by categorie;
-- question 10
select s.nomsp, count(e.epid) from sport s, epreuve e where s.sid=e.sid  group by s.nomsp order by 2 desc;
-- question 11
select a.codepays, count(r.epid), count(distinct r.aid) from athlete a, rangindividuel r where r.rang<4 and r.aid=a.aid group by codepays order by 2 desc;
-- question 12
select a.codepays, e.sid, count(e.epid), count(a.aid) from athlete a, rangindividuel r, epreuve e where r.rang<4 and r.aid=a.aid and r.epid=e.epid  group by a.codepays, e.sid order by a.codepays, 3  desc;
-- question 13
select eqid from athletesequipe group by eqid having count(*)=10;

-- question 16
select sid from sport where not exists (select * from epreuve e2 where not exists (select * from epreuve e3 where e3.sid=e2.sid and e3.categorie=e2.categorie));
select sid from epreuve group by sid having count(distinct categorie)=(select count(distinct categorie from epreuve));
/*
    Pays (codePays, nomP)
    Sport (sid, nomSp)
    Epreuve (epid, sid*, nomEp, catégorie, dateDebut, dateFin)
    Athlete (aid, nomAth, prenomAth, dateNaissance, codePays*)
    Equipe (eqid, codePays*)
    AthletesEquipe (eqid*, aid*)
    RangIndividuel (epid*, aid*, rang)
    RangEquipe (epid*, eqid*, rang)
*/
