declare
ulaz VARCHAR2(20);
cena1 number(6);
cena2 number(6);
cena3 number(6);
poz number(1);

begin
    ulaz := :tri_cene;
    poz := instr(ulaz, ';');
    cena1 := to_number(substr(ulaz,1,poz - 1));
    ulaz := substr(ulaz, poz + 1);
    poz := instr(ulaz, ';');
    cena2 := to_number(substr(ulaz, 1, poz-1));
    cena3 := to_number(substr(ulaz, poz + 1));
    DBMS_OUTPUT.PUT_LINE('Prosecna cena: ' || to_char(cena1+cena2+cena3)/3);
    DBMS_OUTPUT.PUT_LINE('Cene su : ' || to_char(cena1) || ', ' || to_char(cena2) || ', ' || to_char(cena3));
end

declare 
ulaz varchar2(20);
naziv varchar2(20);
proizvod varchar2(20);
cena number(6);
poz number(2);

begin 
    ulaz := :Informacije;
    poz := instr(ulaz, ';');
    naziv := substr(ulaz,1,poz - 1);
    ulaz := substr(ulaz, poz + 1);
    poz := instr(ulaz, ';');
    proizvod := substr(ulaz,1,poz -1);
    ulaz := substr(ulaz, poz + 1);
    poz := instr(ulaz, ';');
    cena := to_number(substr(ulaz, poz + 1));
    DBMS_OUTPUT.PUT_LINE('Proizvodjac je : '|| naziv);
    DBMS_OUTPUT.PUT_LINE('Naziv proizvoda je :'|| proizvod);
    DBMS_OUTPUT.PUT_LINE('Cena je :' || to_char(cena)*0.9);

    exception
        when others then 
        DBMS_OUTPUT.PUT_LINE('Doslo je do greske!');
end    

declare
br number(20);
brOdlicnih number(20);
Procenat number(20,2);

begin
    br := : brUkupan;
    brOdlicnih := : brOdlicnih;
    procenat := brOdlicnih * 100/ br;
    DBMS_OUTPUT.PUT_LINE('Odlicnih ucenikaje :'|| to_char(Procenat));
end
