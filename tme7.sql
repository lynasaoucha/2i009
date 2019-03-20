
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
select a.idc, count(*) from astre a froup by a.idc order bu count(*) desc;
-- question 11
select t.idA2, count(*) as nbastre from tourneautour t group by t.idA2 
select a.nom, count(*) as nbastre from tourneautour t, astre a where t;idA2=a.ida group by t.idA2, a.nom;
-- question 12
select a.nom o.dateObs, avg(valobs) from Observation o, astre a where a.ida=o.ida group by o.ida, o.dateObs, a.nom;
-- question 13
select idc, rayon from astre where rayon = select(max(rayon) from astre) group by idc order by r ;
select 
-- question 14
select idc from astre group by idc having count(*)>1;
-- question 15
