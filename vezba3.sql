declare 
    i number(10);
begin 
    i := 0; 
    while i <=100 loop 
    DBMS_OUTPUT.PUT_LINE(i);
    i:=i+5;
end loop;
end

declare
    i number(10);
begin 
    for i in reverse 1..100 loop
    DBMS_OUTPUT.PUT_LINE(i);
end loop;
end

declare 
    i number (10);

begin 
    i:= 1;
    loop
    DBMS_OUTPUT.PUT_LINE(i);
    i:=i+1;
    exit when i > 100;
    end loop;
end

--petlja 4.0.7--

declare 
    i number (10);

begin 
    i:= 100;
    loop
    DBMS_OUTPUT.PUT_LINE(i);
    i:=i-1;
    exit when i < 0;
    end loop;
end

--Kreirati pl/sql program u koji se unose dva broja, a prikazuju se brojevi iz tog intervala

declare
    i number(10);
    n number(10);
begin 
    i:= :PrviBroj;
    n:= :DrugiBroj;

    loop 
     DBMS_OUTPUT.PUT_LINE(i);
     i:= i+1;
     exit when i > n;
     end loop;
end


--Kreirati pl/sql prorgam u kojem se prikazuju svi prirodni brojevi manji od unetog borja.
--Brojeve prikazati od veceg ka manjem. Zadatak resiti sa for, while i loop

--Primer sa loop
declare
    i number(10);
begin 
    i:= :prviBroj;
    loop
         DBMS_OUTPUT.PUT_LINE(i);
         i:=i-1;
         exit when i = 0;
    end loop;
end


--Primer sa while
declare 
    i number(10);
    n number(10);
begin 
   
    n:= :Broj;
    i := n-1;
    WHILE i >= 1 LOOP
        DBMS_OUTPUT.PUT_LINE(i);
        i:= i-1;
    end loop;
end

--Primer sa for
declare
    broj number(10);
begin 
    broj:= :broj;
    for i in reverse 1..broj-1 loop
    DBMS_OUTPUT.PUT_LINE(i);
end loop;
end
