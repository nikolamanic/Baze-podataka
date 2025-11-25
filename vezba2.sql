--if (uslov) then
--else if

--dbo_output...
--else
--dbo_output...
--end if

--dbo_output...
--elsif (uslov) then 
--dbo_output...

--Kreirati pl/sql u kojem  se unose poeni koje su dva takmicara osvojila na takmicenju iz informatike
--Takmicari imaju razlicit broj poena. Prikazati ko je od takmicara osvojio veci broj poena.

declare
br1 number(10);
br2 number(10);

begin
br1 := :BrojPoena1;
br2 := :BrojPoena2;
if br1 > br2 then dbms_output.put_line('Prvi ima vise za ' || to_char(br1-br2) || ' poena');
elsif  br1=br2 then dbms_output.put_line('Imaju isti broj poena');
else dbms_output.put_line('Drugi ima vise za ' || to_char(br2-br1) || ' poena');
end if;
end


--Kreirati PL/SQL program u kojem se unose poeni koje je takmicar osvojio na takmicenju iz porgramiranja (0-300).
--Prva nagrada se dobija sa 250 poena ili vise, druga nagrada sa 200 ili vise, treca sas 150 poena ili vise.
--Prikazati koju nagradu je dobio takmicar ili poruku ako nije osvojio nagradu.

declare 
br number(10);

begin 
    br := :BrojPoena;
    if (br > 249) then dbms_output.put_line('Prva nagrada');
    elsif (br < 249 and br > 199) then dbms_output.put_line('Druga nagrada');
    elsif (br < 199 and br > 149) then dbms_output.put_line('Treca nagrada');
    else dbms_output.put_line('Nema plasmana');
    end if;
end


--case
--when (uslov) then
--when (uslov) then
--else 
    -- dbms.output...
--end case;


--prethodni zadatak resiti sa case naredbom 

declare 
br number(10);

begin 
    br := :BrojPoena;
    case 
    when ( br > 249) then 
                        dbms_output.put_line('Prva nagrada');
    when ( br > 199) then 
                        dbms_output.put_line('Druga nagrada');
    when ( br > 149) then 
                        dbms_output.put_line('Treca nagrada');

    else 
        dbms_output.put_line('Nema plasmana');
    end case;
end


--drugi nacin zapisivanja kada se dbms.output.. stavi u promenljivu poruka
declare 
br number(10);
poruka varchar2(20);

begin 
    br := :BrojPoena;
    case 
    when ( br > 249) then 
                        poruka := 'Prva nagrada';
    when ( br > 199) then 
                        poruka := 'Druga nagrada';
    when ( br > 149) then 
                        poruka := 'Treca nagrada';

    else 
        poruka := 'Nema plasmana';
    end case;
    dbms_output.put_line(poruka);
end
