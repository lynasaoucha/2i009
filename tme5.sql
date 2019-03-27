@vider
@jo_v2
Select a.nomAth FROM Athlete a, Pays p WHERE p.codePays = a.codePays AND p.nomP='France';
Select s.nomSp, e.nomEp, e.categorie FROM Sport s, Epreuve e WHERE s.sid=e.sid ORDER BY s.nomSp,e.nomEP DESC;
Select a.nomAth from Athlete a, Pays p, Equipe e, AthletesEquipe ae where a.aid=ae.aid and ae.eqid=e.eqid and e.codepays=p.codepays and p.nomP='France';

Select distinct s.nomsp, e.nomep, e.categorie from sport s, epreuve e, equipe eq, rangequipe re where re.epid=e.epid and re.eqid=eq.eqid and e.sid=s.sid;

select p.nomp from pays p, equipe eq, rangequipe re, epreuve ep, sport s where s.nomSP='Biathlon' and ep.sid=s.sid and lower(ep.nomep)='relais 4x6km' and ep.categorie='Femmes' and re.epid=ep.epid and re.rang=1  and eq.eqid=re.eqid and eq.codepays=p.codepays;
-- n'oublie pas de faire la suite 

select distinct  s.nomsp from Sport s,Athlete a,RangIndividuel ri,Epreuve ep Where a.nomAth = 'LESSER' and a.prenomAth = 'Erik' and a.aid = ri.aid and ri.epid = ep.epid and ep.sid = s.sid;

select distinct a.nomAth,a.prenomAth from Athlete a,RangIndividuel ri1, RangIndividuel ri2,Epreuve e1,Epreuve e2,Sport s1,Sport s2 Where a.aid = ri1.aid and a.aid=ri2.aid and ri1.epid = e1.epid and e1.sid = s1.sid and e2.epid = ri2.epid and e2.sid = s2.sid and s1.sid <> s2.sid;

select distinct min(e.dateDebut),max(e.dateFin) from Epreuve e where extract(year from e.dateDebut) = 2014;

select distinct p.nomP from athlete a ,pays p where a.codepays=p.codepays and (extract(year from a.dateNaissance)>1998 or extract(year from a.dateNaissance)<1976);
select e.eqid from Equipe e where 
