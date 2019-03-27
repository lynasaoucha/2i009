select distinct a from athlete a where a.aid = any (select r.aid from rang individuel r) and a.aid in (select ae.aid from athlete equipe ae, rang equipe re where re.eqid=ae.eqid);
select distinct p from pays p where p.codepays = any (select a.codepays from athlete a);
select distinct p from pays p, athlete a where a.aid <> b.aid and p.codepays = b.codepays);
select a from athlete a where not exists (select r from rang individuel r where r.aid = a.aid and r.rang is null);
select p.nomp from pays p where not exists (select * from athlete a, rang individuel r where a.codepays=p.codepays and r.aid=a.aid and r.rang is null);
select p from pays p where exists(select * from athlete a where a.codepays=p.codepays) and not exists (select * from athlete a, rang individuel r where a.codepays=p.codepays and r.aid=a.aid and r.rang is null);