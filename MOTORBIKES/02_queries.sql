SELECT casa_produttrice, modello
       FROM moto;

    select * from moto where anno_produzione = '2021';

    select * from vendita where prezzo >= 14000.00;

    select * from moto where cilindrata >= 600 and anno_produzione > 2020;

    select * from moto where anno_produzione = 2022 or anno_produzione = 2023;

    select * from moto where not anno_produzione = 2019;

    select * from vendita where prezzo between 12000.00 and 16000.00;

    select * from concessionari where partita_iva like '0%';
   
    select * from moto where modello like '%e';

    select * from moto where casa_produttrice like '______';

    select * from moto where casa_produttrice like 'a______';

    select * from moto where modello not like 'r%';

    select * from vendita order by prezzo asc;

    select * from vendita order by prezzo desc;

    SELECT COUNT(*) AS numero_concessionari
    FROM concessionari;

    select avg(prezzo) from vendita;

    select avg(cilindrata) from moto;

    select min(cilindrata) from moto;

    select max(prezzo) from vendita;
