///


program hra;
uses crt;
var
F,a,zlato,zbran,zbroj,lup_k,lup_b,zub,pochoden,boj,odpracovano,karma,talisman,truhly,slysel,balada,struny,kaspec,saman_poprve,cadras_poprve,rada_od_wintyho,
cadras,vykaspecovano,pokecano_kaspec,konec_otazek,pokecano_winty,prozkoumana_vez,sfinga_objevena,poslano_pro_struny,objevena_krypta,kosta_winty,kosta_kaspec,
kosta_cadras,saman_rada,brana:integer;
pokr:real;
jmeno,odpoved1,odpoved2,jmeno_tazani:string[30];
zmlacen:boolean;
BEGIN
randomize;

{Cheaty}
kaspec:=1;
pochoden:=1;
balada:=1;
struny:=1;
slysel:=1;
poslano_pro_struny:=1;
talisman:=0;
prozkoumana_vez:=1;
rada_od_wintyho:=1;
saman_rada:=0;

zbran:=4;
zbroj:=2;
boj:=2;

pokr:=18;


{Inicializace hodnot}
odpoved1:='Bammm';
lup_b:=250;
zmlacen:=false;
zlato:=150;  //NORMALNE 50 ZLATYCH


textcolor(10+blink);
writeln('                            KASPECOVSKA HRA                                     ');
writeln;
textcolor(15);
write('Zadej svoje jmeno: ');
readln(jmeno);
writeln;
textcolor(12);
writeln('PRIBEH:');
textcolor(15);
writeln;
textcolor(14);
writeln('Jako kovaruv syn ',jmeno,', se vydavas do sveta osvobodit princeznu Jasminu ze sparu draka. Rozloucil ses s otcem a jsi ve meste Segard na namesti, kde tvuj pribeh zacina. Mas ',zlato,' zlataku. Hodne stesti!');

REPEAT
if pokr=0 then
            begin
 repeat
  writeln;writeln;
  textcolor(11);
  writeln('Zadej akci (1-3)');
  textcolor(15);
  writeln('1-Dat se na cestu');
  writeln('2-Zeptat se kolejdoucich na princeznu Jasminu');
  writeln('3-Navstivit obchodnika');
  writeln('4-Navstivit hospodu');
  writeln('5-Jit k vezi');      //cheat
  readln(a);
  writeln;
  case a of
  1:begin
      textcolor(14);
      writeln('Jdes lesem kolem jezera');
      pokr:=1;
    end;
  2:begin textcolor(14); writeln('Princezna Jasmina je uveznena ve vezi nedaleko mesta Azair. Do tohoto mesta se dostanes, kdyz se das severne do lesa a na lesni krizovatce se das na vychod');end;
  3:begin
     repeat
       pokr:=30;
       writeln;writeln;
       textcolor(14);
       writeln('Zadej, co chces koupit nebo zda radeji tento kram opustit');
       writeln;
       textcolor(11);
       writeln('Zadej akci (1-3)');
       textcolor(15);
       writeln('1-Zbran');
       writeln('2-Brneni');
       writeln('3-Opustit kram');
       readln(a);
       writeln;
       case a of
       1:begin
           repeat
             writeln;writeln;
             textcolor(14);
             writeln('Vyber si zbran');
             writeln;
             textcolor(11);
             writeln('Mas ',zlato,' zlata');
             writeln('Na vyber mas:');
             textcolor(15);
             writeln('1-mec Bandituv postrach (200 zlatych)');
             writeln('2-sekera Trolo-kosic (400 zlatych)');
             writeln('3-Zpet');
             readln(a);
             writeln;
             case a of
             1:begin if zbran>=2 then begin textcolor(12); writeln('Tuto zbran uz mas nebo vlastnis uz lepsi zbran'); end
                                 else if zlato>=200 then begin textcolor(14); writeln('Koupil jsi mec Bandituv postrach!');   zlato:=zlato-200; zbran:=2; end else begin textcolor(14); writeln('Mas malo penez!');end;end;
             2:begin if zbran>=3 then begin textcolor(12); writeln('Tuto zbran uz mas nebo vlastnis uz lepsi zbran'); end
                                 else if zlato>=400 then begin textcolor(14); writeln('Koupil jsi  sekeru Trolo-kosic!'); zlato:=zlato-400; zbran:=3; end else begin textcolor(14); writeln('Mas malo penez!');end;end;
             3:pokr:=31;
             else writeln('chyba');
             end;
           until pokr=31;
         end;
       2:begin
           repeat
             writeln;writeln;
             textcolor(14);
             writeln('Vyber si zbroj');
             writeln;
             textcolor(11);
             writeln('Mas ',zlato,' zlata');
             writeln('Na vyber mas:');
             textcolor(15);
             writeln('1-Tezka kozena zbroj (250 zlatych)');
             writeln('2-Zpet');
             readln(a);
             writeln;
             case a of
             1:begin if zbroj>=1 then begin textcolor(12); writeln('Tuto zbroj uz mas nebo uz mas lepsi zbroj'); end
                                 else if zlato>=250 then begin textcolor(14); writeln('Koupil jsi Lehkou kozenou zbroj!'); zlato:=zlato-250; zbroj:=1; end else begin writeln('Mas malo penez!');end;end;
             2:pokr:=31;
             else writeln('chyba');
             end;
           until pokr=31;
         end;
       3:begin textcolor(14);
               writeln('Opustil jsi kram');
               pokr:=0;
         end;
       else writeln('chyba');
       end;
     until pokr=0;
    end;
  4:begin
          textcolor(14);
          writeln('Vstoupil jsi do hospody');
          pokr:=20;
    end;
  5:pokr:=7;       //cheat
  else writeln('Chyba');
  end;
 until (pokr=1) or (pokr=20) or (pokr=7);
end;


if pokr=1 then
               begin
                 repeat
                 writeln;writeln;
                 textcolor(11);
                 writeln('Zadej akci (1-3)');
                 textcolor(15);
                 writeln('1-Pokracovat dal po ceste');
                 writeln('2-Odpocinout si pod stromem u jezirka');
                 writeln('3-Vratit se do mesta');
                 readln(a);
                 writeln;
                 case a of
                 1:begin textcolor(14); writeln('Po ceste jsi narazil na kolemjdouciho'); pokr:=2;end;
                 2:begin textcolor(14); if zbran=0 then begin writeln('Nadherne sis odpocinul a pri odpocinku jsi si vsiml dobreho klacku jako zbrane (sice nic moc, ale oko bys s nim nekomu vypichnout mohl :-))'); zbran:=1 end
                                                   else writeln('Nadherne sis odpocinul!');
                   end;
                 3:begin textcolor(14); writeln('Vratil jsi se do mesta'); pokr:=0 end;
                 else writeln('Chyba');
                 end;
                 until (pokr=2) or (pokr=0);
               end;

if pokr=2 then begin
                 repeat
                   writeln;writeln;
                   textcolor(11);
                   writeln('Zadej akci(1-4)');
                   textcolor(15);
                   writeln('1-Pozdravit kolemjdouciho a zeptat se ho na den');
                   writeln('2-Zmlatit kolejdouciho');
                   writeln('3-Pokracovat dal');
                   writeln('4-Vratit se k jezeru');
                   readln(a);
                   writeln;
                   case a of
                   1:begin
                          if zmlacen=false then begin textcolor(14); writeln('Mam se dobre, dekuji. Za to ze jsi tak zdvorily, tak ti dam malou radu. O kousek dal na lesni krizovatce se nedavej na vychod, je tam trol ktery brani v ceste');end;
                          if zmlacen=true  then begin textcolor(14); writeln('No, nemam se zrovna moc dobre kdyz me nakej darebak zmlatil, ze?');end;
                     end;
                   2:
                     begin
                     karma:=1;
                     if zbran>0 then
                          begin
                               if zmlacen=true then
                                                   begin
                                                        textcolor(14);
                                                        writeln('Zase jsi zmlatil kolemjdouciho ale uz mu nemas co ukrast');
                                                   end;

                               if zmlacen=false then
                                                    begin
                                                         textcolor(14);
                                                         writeln('Zmlatil jsi kolemjdouciho a ukradl jsi mu ',lup_k+100,' zlatych');
                                                         zlato:=zlato+(lup_k+100);
                                                         zmlacen:=true;
                                                         writeln('Mas ',zlato,' zlata');
                                                    end;
                          end;
                     if zbran=0 then
                           begin
                                textcolor(14);
                                writeln('Kolejdouci ti dal na frak a okradl te');
                                lup_k:=lup_k+zlato;
                                zlato:=0;
                                writeln('Mas ',zlato,' zlata');
                           end;
                     end;
                   3:begin textcolor(14); writeln('Dosel jsi na lesni krizovatku');pokr:=3;end;
                   4:begin textcolor(14); writeln('Vratil jsi se k jezeru');pokr:=1; end;
                  end;
                 until (pokr=3) or (pokr=1);
               end;

if pokr=3 then
              begin
                   repeat
                   writeln;writeln;
                   textcolor(11);
                   writeln('Zadej akci (1-5)');
                   textcolor(15);
                   writeln('1-Jit na zapad');
                   writeln('2-Jit na sever');
                   writeln('3-Jit na jih');
                   writeln('4-Jit na vychod');
                   writeln('5-Jit na zachod');
                   readln(a);
                   writeln;
                   case a of
                   1:begin textcolor(14); writeln('Dosel jsi k jeskyni'); pokr:=5; end;
                   2:begin textcolor(14); writeln('Dosel jsi na farmu'); pokr:=6; end;
                   3:begin textcolor(14); writeln('Vratil jsi se ke kolemjdoucimu'); pokr:=2; end;
                   4:begin textcolor(14); writeln('Dosel jsi do lesa'); pokr:=4 end;
                   5:begin textcolor(14); writeln('Nadherne sis ulevil, muzes pokracovat dal');end;
                   else writeln('chyba');
                   end;
                   until (pokr=4) or (pokr=2) or (pokr=5) or (pokr=6);
              end;

if pokr=4 then
              begin
                   repeat
                     writeln;writeln;
                     textcolor(11);
                     writeln('Zadej akci (1-3)');
                     textcolor(15);
                     writeln('1-Jit dale lesem');
                     writeln('2-Jit zpet ke krizovatce');
                     if (poslano_pro_struny=1) and (struny=0) then writeln('3-Porozhlednout se po Wintyho strunach na jeho ooo mocnou kytaru');
                     readln(a);
                     writeln;
                     case a of
                     1:begin if zub=0 then begin textcolor(14); writeln('Pred mestem jsi narazil na obrovskeho trola, kteremu z obrovke huby upada jeste vetsi slina!'); pokr:=22; end
                                      else begin textcolor(14); writeln('Dosel jsi do mesta Azair'); pokr:=17; end;
                       end;
                     2:begin textcolor(14); writeln('Dosel jsi na lesni krizovatku');pokr:=3; end;
                     3:begin if (poslano_pro_struny=1) and (struny=0) then begin
                                                                              textcolor(14); writeln('Pri hledani brasny se stunami jsi s narazil na vlci doupe, pred kterem stoji maly vlk, ktery nevypada moc privetive');
                                                                              writeln;writeln;
                                                                              textcolor(11);
                                                                              writeln('Zadej akci (1-2)');
                                                                              textcolor(15);
                                                                              writeln('1-Bojovat s vlkem');
                                                                              writeln('2-Utect vlkovi');
                                                                              readln(a);
                                                                              writeln;
                                                                              case a of
                                                                              1:begin if zbran>=1 then begin
                                                                                                         textcolor(14); writeln('Rozbehl jsi se na maleho vlka. Vlk videl ze v rukou svijis nejakou zbran, tak se dal radeji k uteku');
                                                                                                         writeln;
                                                                                                         writeln('Po zahnani vlka jsi se podival po brasne i do jeho skryse a ta mrska ji tam opravdu mela :-)');
                                                                                                         struny:=1;
                                                                                                         pokr:=4;
                                                                                                       end
                                                                                                  else begin textcolor(14); writeln('Rozbehl jsi se na maleho vlka bez jakekoli zbrane. Maly vlk se take dava do utoku a skokem po krku te ihned usmrtil. Jsi ve meste Segard.'); pokr:=0; end;
                                                                                end;
                                                                              2:begin textcolor(14); writeln('Utekl jsi vlkovi'); pokr:=4; end
                                                                              else writeln('chyba');
                                                                              end;
                                                                           end
                                                                      else writeln('chyba');
                       end;
                     else writeln('chyba');
                     end;
                   until (pokr=22) or (pokr=17) or (pokr=3) or (pokr=0);
              end;

if pokr=5 then
              begin
                   repeat
                         writeln;writeln;
                         textcolor(11);
                         writeln('Zadej akci (1-3)');
                         textcolor(15);
                         writeln('1-Jit na zapad');
                         writeln('2-Jit do jeskyne');
                         writeln('3-Jit zpet k lesni krizovatce');
                         readln(a);
                         writeln;
                         case a of
                         1:begin
                            if zub=0 then begin textcolor(14); writeln('Narazil jsi na tabor banditu, kteri zrovna nevypadaji tvoji navstevou nadsene');pokr:=8;end;
                            if zub=1 then begin textcolor(14); writeln('Narazil jsi na tabor banditu, kteri se doslechli, ze jsi skolil trola a jsou z tebe celi posrani');pokr:=8; end;
                           end;
                         2:begin if pochoden=0 then begin textcolor(14); writeln('Bez pochodne je tu strasna tma a nemuzes jit dal'); end;
                                 if pochoden=1 then begin textcolor(14); writeln('V jeskyni jsi narazil na 1. rozbocku');pokr:=9; end;
                           end;
                         3:begin textcolor(14); writeln('Dosel jsi k lesni krizovatce'); pokr:=3; end;
                         else writeln('chyb');
                         end;
                   until (pokr=8) or (pokr=9) or (pokr=3);
              end;

if pokr=6 then
              begin
                   repeat
                         writeln;writeln;
                         textcolor(11);
                         writeln('Zadej akci (1-3)');
                         textcolor(15);
                         writeln('1-Porozhlidnout se po nejake praci');
                         writeln('2-Naucit se u cvicitele bojovemu umeni (50 zlatych)');
                         writeln('3-Vratit se k lesni krizovatce');
                         readln(a);
                         writeln;
                         case a of
                         1:begin
                                textcolor(14);
                                writeln('Zdejsi farmar ti nabidl 150 zlataku, kdyz mu vytrhas a zaneses turiny');writeln;writeln;
                                textcolor(11);
                                writeln('Zadej akci (1-2)');
                                textcolor(15);
                                writeln('1-Vykonat namahavou praci');
                                writeln('2-Poslat farmare si je sklidit sam');
                                readln(a);
                                writeln;
                                case a of
                                1:begin if odpracovano=1 then begin textcolor(14); writeln('Prace uz byla vykonana!');end;
                                        if odpracovano=0 then begin textcolor(14); writeln('Dekuji ti za praci, tady mas svych 150 zlatych a pochoden s kresadlem. Dam ti jeste jednu radu. Na zapad od jeskyne si dej pozor na badity. Obiraji kazdeho, kdo jim prijde do cesty');pochoden:=1;zlato:=zlato+150; writeln('Mas ',zlato,' zlata'); odpracovano:=1; end;
                                  end;
                                2:begin textcolor(14); writeln('Ses linej jak ves');end;
                                else writeln('chyba');
                                end;
                           end;
                         2:begin if (zlato<50) or (boj=1) then begin textcolor(14); writeln('Nemas dostatek penez nebo uz danou dovednost mas naucenou!');end;
                                 if (zlato>=50) and (boj=0) then begin textcolor(14); writeln('Naucil jsi se zachazet se zbrani');zlato:=zlato-100;boj:=1;writeln('Mas ',zlato,' zlata'); end;
                           end;
                         3:begin textcolor(14); writeln('Dosel jsi k lesni krizovatce'); pokr:=3; end;
                         else writeln('chyba');
                         end;
                   until pokr=3;
              end;

if pokr=7 then
               begin
                    repeat
                          writeln;writeln;
                          textcolor(11);
                          if prozkoumana_vez=0 then writeln('Zadej akci (1-3)') else writeln('Zadej akci (1-5)');
                          textcolor(15);
                          writeln('1-Zkusit prorazit zed');
                          writeln('2-Prozkoumat to tu');
                          writeln('3-Dat se zpet do banditskeho tabora');
                          if prozkoumana_vez=1 then writeln('4-Flaknout do zdi hlavou');
                          if (prozkoumana_vez=1) and (rada_od_wintyho=1) then writeln('5-Hezky poprosit o vpusteni za Cadrasem.');
                          readln(a);
                          writeln;
                          case a of
                          1:begin textcolor(14);writeln('Pekne sis nabil a zed jsi samozrejme neprorazil.');end;
                          2:begin
                              textcolor(14);
                              writeln('Na zdi jsi nasel napsano malym pismem: "Kdyz nepomuze ani kladivo, pouzij hlavu."');
                              prozkoumana_vez:=1;
                              writeln;
                              if cadras=1 then writeln('Winty by mozna mohl vedet, co s tim.');
                            end;
                          3:begin if zub=0 then begin textcolor(14); writeln('Narazil jsi na tabor banditu, kteri zrovna nevypadaji tvoji navstevou nadsene.');pokr:=8;end;
                                  if zub=1 then begin textcolor(14); writeln('Narazil jsi na tabor banditu, kteri se doslechli, ze jsi skolil trola a jsou z tebe celi posrani.');pokr:=8; end;
                            end;
                          4:begin if prozkoumana_vez=1 then begin textcolor(14); writeln('Krapl jsi do zdi vsi silou hlavou, ale asi to nebyl ten spravny zpusob... jak te muzou takovy kraviny jen napadnout? :-)');end
                                  else writeln('chyba');
                            end;
                          5:begin if (prozkoumana_vez=1) and (rada_od_wintyho=1) then begin textcolor(14); writeln('Najednou se kolem tebe objevilo bile svetlo a byl jsi teleportovan do veze. Ve vezi stoji carodej, ktery prave micha nejaky lektvar.');pokr:=16;end
                                  else writeln('chyba');
                            end;
                          else writeln('chyba');
                          end;
                    until (pokr=8) or (pokr=16);
               end;


if (pokr=8) and (zub=0) and (lup_b>0) then
             begin
                  repeat
                   writeln;writeln;
                   textcolor(11);
                   writeln('Zadej akci (1-3)');
                   textcolor(15);
                   writeln('1-Utect banditum');
                   writeln('2-Bojovat s bandity');
                   writeln('3-Podplatit bandity (300 zlatych)');
                   readln(a);
                   writeln;
                   case a of
                   1:begin
                       if karma=0 then begin textcolor(14); writeln('Utekl jsi banditum k jeskyni');pokr:=5; end;
                       if karma=1 then begin textcolor(14); writeln('Nedokázal jsi utéct banditùm. Banditi te zmlatilia okradli, jsi ve mseste Segard');pokr:=0;lup_b:=lup_b+zlato;zlato:=0; end;
                     end;
                   2:begin
                       if (zbran>1) and (boj>0) then begin textcolor(14); writeln('Zmlatil jsi bandity a oloupil jsi je o ',lup_b,' zlata a mas ',zlato+lup_b,' zlata');zlato:=zlato+lup_b;lup_b:=0 end
                                                else begin textcolor(14); writeln('Prohral jsi souboj s bandity, zmlatili te a okradli, jsi ve meste Segard');pokr:=0;lup_b:=lup_b+zlato;zlato:=0; end;
                     end;
                   3:if zlato>=300 then begin textcolor(14); writeln('Banditi te nechali za drobny uplatek projit dal, dosel jsi k Cadrasove vezi');zlato:=zlato-300;pokr:=16;end
                                   else begin textcolor(14); writeln('Nemas tolik penez. Banditi te zmlatili a okradli o zbytek zlata');pokr:=0;lup_b:=lup_b+zlato;zlato:=0;end;
                   else writeln('chyba');
                   end;
                  until (pokr=5) or (pokr=0) or (pokr=8);
             end;

if (pokr=8) and (zub=0) and (lup_b=0) then
             begin
                  repeat
                   writeln;writeln;
                   textcolor(11);
                   writeln('Zadej akci (1-3)');
                   textcolor(15);
                   writeln('1-Jit na zapad');
                   writeln('2-Jit k jeskyni');
                   writeln('3-Zmlatit bandity');
                   readln(a);
                   writeln;
                   case a of
                   1:begin textcolor(14); writeln('Dosel jsi k podivne vezi, ale nikde nevidis zadny vchod');pokr:=7; end;
                   2:begin textcolor(14); writeln('Dosel jsi k jeskyni');pokr:=5; end;
                   3:begin textcolor(14); zlato:=zlato+lup_b; writeln('Posrani banditi se ani nevzepreli na odpor a nez se nadeli, byli zmlaceni a okradnuti o ',lup_b,' zlata a mas ',zlato,' zlata');lup_b:=0; end;
                   else writeln('chyba');
                   end;
                  until (pokr=5) or (pokr=7);
             end;

if (pokr=8) and (zub=1) then
                            begin
                                 repeat
                                       writeln;writeln;
                                       textcolor(11);
                                       writeln('Zadej akci (1-4)');
                                       textcolor(15);
                                       writeln('1-Jit na zapad');
                                       writeln('2-Jit k jeskyni');
                                       writeln('3-Zmlatit bandity');
                                       writeln('4-Vychloubat se pred bandity, ze jsi skolil trola');
                                       readln(a);
                                       writeln;
                                       case a of
                                       1:begin textcolor(14); writeln('Dosel jsi k podivne vezi, ale nikde nevidis zadny vchod');pokr:=7; end;
                                       2:begin textcolor(14); writeln('Dosel jsi k jeskyni');pokr:=5; end;
                                       3:begin textcolor(14); zlato:=zlato+lup_b; writeln('Posrani banditi se ani nevzepreli na odpor a nez se nadeli, byli zmlaceni a okradnuti o ',lup_b,' zlata a mas ',zlato,' zlata');lup_b:=0; end;
                                       4:begin textcolor(14); writeln('Takovyho trola jsem skolil raz-dva, s par banditama bych nemel nejmensi problem. Jen nas nebi, PROSIM!'); end;
                                       else writeln('chyba');
                                       end;
                                 until (pokr=5) or (pokr=7);
                            end;

if pokr=9 then
              begin
                   repeat
                         writeln;writeln;
                         textcolor(11);
                         writeln('Zadej akci (1-3)');
                         textcolor(15);
                         writeln('1-Dat se na sever');
                         writeln('2-Dat se na zapad');
                         writeln('3-Jit smerem ven z jeskyne');
                         readln(a);
                         writeln;
                         case a of
                         1:begin textcolor(14); writeln('Dostal jsi se na dalsi rozbocku'); pokr:=10; end;
                         2:begin textcolor(14); writeln('Dostal jsi se na dalsi rozbocku'); pokr:=11; end;
                         3:begin textcolor(14); writeln('Vysel jsi ven z jeskyne'); pokr:=5; end;
                         else writeln('chyba');
                         end;
                   until (pokr=5) or (pokr=10) or (pokr=11);
              end;

if pokr=10 then
               begin
                    repeat
                          writeln;writeln;
                          textcolor(11);
                          writeln('Zadej akci (1-3)');
                          textcolor(15);
                          writeln('1-Dat se na sever');
                          writeln('2-Dat se na zapad');
                          writeln('3-Jit smerem ven z jeskyne');
                          readln(a);
                          writeln;
                          case a of
                          1:begin textcolor(14); writeln('Dosel jsi k podivnemu assassinovi, ktery tu po necem smejdi'); pokr:=14; end;
                          2:begin textcolor(14); writeln('Dosel jsi do komnaty s par truhlami');pokr:=15 end;
                          3:begin textcolor(14); writeln('Dosel jsi na prvni rozbocku'); pokr:=9; end;
                          else writeln('chyba');
                          end;
                    until (pokr=9) or (pokr=14) or (pokr=15);
               end;

if pokr=11 then
                begin
                     repeat
                           writeln;writeln;
                           textcolor(11);
                           writeln('Zadej akci (1-3)');
                           textcolor(15);
                           writeln('1-Dat se na sever');
                           writeln('2-Dat se na zapad');
                           writeln('3-Jit smerem ven z jeskyne');
                           readln(a);
                           writeln;
                           case a of
                           1:begin textcolor(14); writeln('Dosel jsi k uchvatne Sfinze, na ktere je napsana otazka: ');pokr:=13; end;
                           2:begin textcolor(14); writeln('Dosel jsi k propasti');pokr:=12; end;
                           3:begin textcolor(14); writeln('Dostal jsi se k prvni rozbocce');pokr:=9 end;
                           else writeln('chyba');
                           end;
                     until (pokr=9) or (pokr=12) or (pokr=13);
                end;

if pokr=12 then
               begin
                    repeat
                          writeln;writeln;
                          textcolor(11);
                          writeln('Zadej akci (1-2)');
                          textcolor(15);
                          writeln('1-Pokusit se propast preskocit');
                          writeln('2-Vratit se ke druhe rozbocce');
                          readln(a);
                          writeln;
                          case a of
                          1:begin textcolor(14); writeln('Tak takovou propast bys se pokousel preskocit jen debil. Samosdrejme ze jsi spadl dolu a slusne ses polamal. Jsi ve meste Segard.'); pokr:=0; end;
                          2:begin textcolor(14); writeln('Vratil jsi se ke druhe rozbocce');pokr:=11; end;
                          else writeln('chyba');
                          end;

                    until (pokr=0) or (pokr=11);
               end;

if pokr=13 then
               begin
                    repeat
                          sfinga_objevena:=1;
                          writeln;writeln;
                          textcolor(11);
                          writeln('Zadej akci (1-3)');
                          textcolor(15);
                          writeln('1-Odpovedet na otazku');
                          writeln('2-Jit smerem ven z jeskyne');
                          readln(a);
                          writeln;
                          case a of
                          1:begin
                                 textcolor(11);
                                 write('Zadej odpoved: ');
                                 textcolor(14);
                                 readln(odpoved2);
                                 writeln;
                                 if odpoved1=odpoved2 then writeln('Sfinga se otevrela a ziskal jsi z ni kouzelny talisman');talisman:=1;
                                 if odpoved1<>odpoved2 then writeln('Spatne heslo lamo, vrat se az ho budes vedet');
                            end;
                          2:begin textcolor(14); writeln('Vratil jsi se ke druhe rozbocce');pokr:=11; end;
                          else writeln('chyba');
                          end;
                    until pokr=11;
               end;

if pokr=14 then
               begin
                    repeat
                          writeln;writeln;
                          textcolor(11);
                          if (pokecano_kaspec=1) and (vykaspecovano=0) then writeln('Zadej akci (2-4)')
                                                                       else if (pokecano_kaspec=1) and (vykaspecovano=1) then writeln('Zadej akci 2-3')
                                                                                                                         else writeln('Zadej akci 1-2');
                          textcolor(15);
                          if pokecano_kaspec=0 then writeln('1-Vyzvidat od assassina, co tu pohledava');
                          writeln('2-Jit smerem ven z jeskyne');
                          if pokecano_kaspec=1 then writeln('3-Nechat se ucit od Kaspeca pokrocilemu boji (150 zlataku)');
                          if pokecano_kaspec=1 then writeln('4-Zeptat se Kaspeca na par otazek');
                          if (pokecano_kaspec=1) and (vykaspecovano=0) then writeln('5-Omluvit se mocnemu asssassinovi a vrhnout se spolu na propast');
                          readln(a);
                          writeln;
                          case a of
                          1:begin if pokecano_kaspec=0 then begin if kaspec=0 then begin textcolor(14); writeln('Hele mladej, o me se nestarej, mas urcite dost svych problemu');end
                                                                       else begin
                                                   pokecano_kaspec:=1;
                                                   textcolor(10); writeln('Nejsi nahodou Kaspec, mocny assassin, o kterem mi vypravel Winty?');writeln;
                                                   textcolor(14); writeln('To teda nahodou jsem, co potrebujes prcku?');writeln;
                                                   textcolor(10); writeln('Slysel jsem, ze mas velke zkusenosti s draky, nemohl bys mi  dat nejake rady? Chystam se osvobodit princeznu Jasminu a docela rad bych to prezil.');writeln;
                                                   textcolor(14); write('Ty, takovy nezkuseny capart, chces bojovat s drakem?! To jsi me opravdu rozesmal. Aby jsi porazil draka, musis se toho jeste hodne naucit.');
                                                                  write(' Draci jsou mazani a rozhodne nepodceni zadneho protivnika, za kazdou cenu se budou snazit boj oddalit, aby zjistili tve slabiny.');
                                                                  write(' Ale nez ti povim vic, musim si otestovat, jestli na to mas. Kousek odtud je pro jednoho neprekonatelna propast, ale ve dvou bychom ji mohli prekonat.');
                                                                  writeln(' Pomoz mi a budes se moci dale ptat. Dokonce te i nejakemu tomu boji naucim, kdyz mi zacinkas par zlatacky. Ale potrebujes aspon nejake zaklady boje, abych te naucil, jak bojovat s drakem');writeln;writeln;
                                                   textcolor(11); writeln('Zadej akci (1-2)');
                                                   textcolor(15); writeln('1-Pomoc Kaspecovi s propasti');
                                                                  writeln('2-Vyprdnout se na blazniveho assassina');
                                                                  readln(a);
                                                                  case a of
                                                                  1:begin
                                                                      writeln;
                                                                      vykaspecovano:=1;
                                                                      textcolor(14); writeln('Spravna volba kamarade, nebudes litovat! ;-)');writeln;
                                                                                     writeln('Pomoci Kaspecovske finty jste se dostali na druhou stranu a objevili tam poklad');writeln;
                                                                                     writeln('Nejsi uplne k nicemu, tu mas 25% koristi.');
                                                                      writeln;
                                                                      textcolor(11); writeln('Zadej akci (1-3)');
                                                                      textcolor(15); writeln('1-Bez 40% odtud neodejdu!');
                                                                                     writeln('2-Dame si to fifty-fifty a budem oba spokojeni, ok?');
                                                                                     writeln('3-Dobra, ty jsi sef.');
                                                                                     readln(a);
                                                                                     writeln;
                                                                                     case a of
                                                                                     1:begin textcolor(14); zlato:=zlato+500; writeln('Dobre, dobre, tady mas 40%. Libi se mi tva kuraz. (Obdrzel jsi 500 zlata a mas ',zlato,' zlata). A ted se ptej.');  end;
                                                                                     2:begin textcolor(14); zlato:=zlato+500; writeln('Hele mladej, si nejak moc veris, ale za tvou kuraz ti dam 40%. (Obdrzel jsi 500 zlata a mas ',zlato,' zlata). A ted se ptej.');  end;
                                                                                     3:begin textcolor(14); zlato:=zlato+350; writeln('Cekal jsem, ze budes mit vetsi kuraz a pokusis se smlouvat. S takovym sebevedomim na draka ani nechod. (Obdrzel jsi 350 zlata a mas ',zlato,' zlata). Radeji uz se ptej.'); end;
                                                                                     else writeln('chyba');
                                                                                     end;
                                                                    end;
                                                                  2:begin textcolor(10);writeln; writeln('Jdi k certu i s nejakymi tvymi propastmi!!'); end;
                                                                  else writeln('chyba');
                                                                  end;
                                                          end;
                                                     end;
                            if pokecano_kaspec=1 then writeln('chyba');end;
                          2:begin textcolor(14); writeln('Dosel jsi na druhou rozbocku');pokr:=10; end;
                          3:begin if pokecano_kaspec=1 then begin
                                                           if boj=2 then begin
                                                                              textcolor(14);
                                                                              writeln('Tuto dovednost uz mas naucenou!');
                                                                         end;
                                                           if boj=0 then begin
                                                                              textcolor(14);
                                                                              writeln('Jsi nedostatecne zkuseny v boji, aby ses mohl naucit pokrocily boj');
                                                                         end;
                                                           if boj=1 then begin
                                                                              textcolor(14);
                                                                              zlato:=zlato-150;writeln('Naucil jsi se pokrocilemu boji se zbrani! Mas ',zlato,' zlata');boj:=2;
                                                                         end;
                                                      end;
                            if pokecano_kaspec=0 then writeln('chyba');end;
                          4:begin if pokecano_kaspec=1 then begin repeat
                                                            writeln;
                                                            konec_otazek:=0;
                                                            textcolor(11); writeln('Na co se Kaspeca zeptame? (1-4)');
                                                            textcolor(15); writeln('1-Maji draci nejake slabiny?');
                                                                           writeln('2-Jak jsi skolil draka ty?');
                                                                           writeln('3-Co by jsi mi doporucoval za taktiku?');
                                                                           writeln('4-Prestat se ptat');
                                                                           readln(a);
                                                                           writeln;
                                                                           textcolor(14);
                                                                           case a of
                                                                           1:begin writeln('No, jsou velci, silni a inteligentni, to je smrtelna kombinace. Jedina nevyhoda tech mrch je, ze nez se otoci, tak  padne pena u kofoly. Takze je treba byt rychlejsi nez clovek s prujmem.'); end;
                                                                           2:begin writeln('Velka vyhoda byla, ze jsem na to nebyl sam. Nebyt meho pritele Cadrase, bojovali bychom jeste ted. Tak mrstnou mrchu jsem do te doby nevidel. Ale on jen cosi zazbrblal a ona se najednou skoro nehybala. Pak uz to byla hracka..'); end;
                                                                           3:begin writeln('Byt tam ja, tak bych se mu pokusil co nejrychleji vyradit kridla, tim se vse zjednodusi a bude mozno bojovat a ne se jen honit. Drak zahnany do kouta nema na vyber a bude bojovat..'); end;
                                                                           4:begin writeln('Prestal jsi se ptat');konec_otazek:=1; end;
                                                                           else writeln('chyba');
                                                                           end;
                                                            until konec_otazek=1;
                                                      end;
                            if pokecano_kaspec=0 then writeln('chyba');end;
                          5:begin textcolor(10); writeln('Mocny assassine Kaspeci, omlouvam se, muzete mi prosim prominout mou nezdvorilost a vrhnout se na tu propast?');writeln;
                                  textcolor(14); writeln('Dobra malicky, pro tentokrat ti prominu, jdem na to....');writeln;
                                  vykaspecovano:=1;
                                  textcolor(14); writeln('Pomoci Kaspecovske finty jste se dostali na druhou stranu a objevili tam poklad');writeln;
                                  writeln('Nejsi uplne k nicemu, tu mas 25% koristi.');
                                  writeln;
                                  textcolor(11); writeln('Zadej akci (1-3)');
                                  textcolor(15); writeln('1-Bez 40% odtud neodejdu!');
                                  writeln('2-Dame si to fifty-fifty a budem oba spokojeni, ok?');
                                  writeln('3-Dobra, ty jsi sef.');
                                  readln(a);
                                  writeln;
                                  case a of
                                  1:begin textcolor(14); zlato:=zlato+0; writeln('Dobre, dobre, tady mas 40%. Libi se mi tva kuraz. (Obdrzel jsi xx zlata a mas ',zlato,' zlata). A ted se ptej.'); end;
                                  2:begin textcolor(14); zlato:=zlato+0; writeln('Hele mladej, si nejak moc veris, ale za tvou kuras ti dam 40%. (Obdrzel jsi xx zlata a mas ',zlato,' zlata). A ted se ptej.'); end;
                                  3:begin textcolor(14); zlato:=zlato+0; writeln('Cekal jsem, ze budes mit vetsi kuraz a pokusis se smlouvat. S takovym sebevedomim na draka ani nechod. (Obdrzel jsi xx zlata a mas ',zlato,' zlata). Radeji uz se ptej.'); end;
                                  else writeln('chyba');
                                  end;
                            end;
                          else writeln('chyba');
                          end;
                    until pokr=10;
               end;

if pokr=15 then
               begin
                    repeat
                          writeln;writeln;
                          textcolor(11);
                          writeln('Zadej akci');
                          textcolor(15);
                          writeln('1-Prohledat truhly');
                          writeln('2-Dat si odchod');
                          readln(a);
                          writeln;
                          case a of
                          1:begin
                              if truhly=1 then
                                              begin
                                                textcolor(14);
                                                writeln('Truhly uz byly prohledany!');
                                              end;
                              if truhly=0 then
                                              begin
                                                   textcolor(14);
                                                   zlato:=zlato+200;
                                                   writeln('Mezi hromadou harampadi jsi nasel i nejaky peniz. +200 zlata. Momentalne mas ',zlato,' zlata');
                                                   truhly:=1;
                                              end;
                            end;
                          2:begin textcolor(14); writeln('Vratil jsi se ke druhe rozbocce'); pokr:=10 end;
                          else writeln('chyba');
                          end;
                    until (pokr=10);
               end;


if pokr=16 then
               begin
                    repeat
                          writeln;writeln;
                          textcolor(11);
                          writeln('Zadej akci (1-3)');
                          textcolor(15);
                          writeln('1-Opatrne vyrusit carodeje');
                          writeln('2-Potichu ho sledovat');
                          writeln('3-Nahlas pozdravit maga');
                          readln(a);
                          writeln;
                          case a of
                          1:begin
                              textcolor(14);
                              writeln('Nevis, ze pri praci by se lidi nemeli vyrusovat? Ale kdyz uz jsi se dostal az sem, navic, kdyz jsem tu jiz tak dlouho nemel spolecnot, tak ti pro tentokrat prominu.');
                            end;
                          2:begin
                              textcolor(14);
                              writeln('Vidim, ze jsi trpelivy clovek. Jestli potrebujes pomoci, nyni jsem ti k dispozici.');
                            end;
                          3:begin textcolor(14); writeln('Proc me vyrusujes pri praci? Vrat se az se naucis chovat!');pokr:=random(9);writeln;
                            if pokr=0 then writeln('Objevil jsi se ve meste');
                            if pokr=1 then writeln('Objevil jsi se u jezírka');
                            if pokr=2 then writeln('Objevil jsi se u kolemjdouciho');
                            if pokr=3 then writeln('Objevil jsi se na krozivatce');
                            if pokr=4 then writeln('Objevil jsi se u trola');
                            if pokr=5 then writeln('Objevil jsi se u jeskyne');
                            if pokr=6 then writeln('Objevil jsi se na farme');
                            if pokr=7 then writeln('Objevil jsi se u veze');
                            if pokr=8 then writeln('Objevil jsi se v tabore banditu');
                            end;
                          else writeln('chyba');
                          end;
                          if (pokr=16) and (cadras_poprve=0) then begin
                                                                    writeln;
                                                                    writeln('Nejdriv mi ale povez sve jmeno cizince.');
                                                                    writeln;
                                                                    textcolor(11);
                                                                    write('Odpoved: ');
                                                                    readln(jmeno_tazani);
                                                                    writeln;
                                                                    textcolor(14);
                                                                    if jmeno_tazani=jmeno then begin
                                                                                                 writeln('Citim ze mi nelzes, proto se muzes zacit ptat.');
                                                                                                 pokr:=19;
                                                                                               end
                                                                                          else begin
                                                                                                 writeln('Neco mi rika, ze ke me nejsi uprimny. Vrat se, az nabydes vice uprimnosti');
                                                                                                 if pokr=0 then writeln('Objevil jsi se ve meste');
                                                                                                 if pokr=1 then writeln('Objevil jsi se u jezírka');
                                                                                                 if pokr=2 then writeln('Objevil jsi se u kolemjdouciho');
                                                                                                 if pokr=3 then writeln('Objevil jsi se na krozivatce');
                                                                                                 if pokr=4 then writeln('Objevil jsi se u trola');
                                                                                                 if pokr=5 then writeln('Objevil jsi se u jeskyne');
                                                                                                 if pokr=6 then writeln('Objevil jsi se na farme');
                                                                                                 if pokr=7 then writeln('Objevil jsi se u veze');
                                                                                                 if pokr=8 then writeln('Objevil jsi se v tabore banditu');
                                                                                               end;
                                                                  end;
                          if (pokr=16) and (cadras_poprve=1) then begin
                                                                    writeln;
                                                                    writeln('Muzes se ptat.');
                                                                    pokr:=19;
                                                                  end;
                    until pokr<>16;
               end;



if pokr=17 then
               begin
                    repeat
                          writeln;writeln;
                          textcolor(11);
                          writeln('Zadej akci');
                          textcolor(15);
                          writeln('1-Dat se z mesta na sever');
                          writeln('2-Dat se z mesta na zapad');
                          writeln('3-Navstivit obchodnika');
                          writeln('4-Zeptat se na Princeznu Jasminu');
                          readln(a);
                          writeln;
                          case a of
                          1:begin textcolor(14); writeln('Dostal ses ke krizovatce');pokr:=18; end;
                          2:begin textcolor(14); writeln('Dostal jsi se do lesa');pokr:=4; end;
                          3:begin
                              repeat
                                pokr:=30;
                                writeln;writeln;
                                textcolor(14);
                                writeln('Zadej, co chces koupit nebo zda radeji tento kram opustit');
                                writeln;
                                textcolor(11);
                                writeln('Zadej akci (1-2)');
                                textcolor(15);
                                writeln('1-Brneni');
                                writeln('2-Opustit kram');
                                readln(a);
                                writeln;
                                case a of
                                1:begin
                                    repeat
                                      writeln;writeln;
                                      textcolor(14);
                                      writeln('Vyber si zbroj');
                                      writeln;
                                      textcolor(11);
                                      writeln('Na vyber mas:');
                                      textcolor(15);
                                      writeln('1-Obrovska platova zbroj se zvlastni magickou aurou (Nedostatek penez- pokusit se smlouvat)');
                                      writeln('2-Zpet');
                                      readln(a);
                                      writeln;
                                      case a of
                                      1:begin
                                         if zbroj<2 then
                                                      begin
                                                        textcolor(14); writeln('Takze ty by jsi mel zajem o tuto magickou zbroj? Bouzel tech par zlatacku, ktere mas, ti vubec nestaci. Ale kdyby jsi mel pro me neco cenneho, tak bychom se mohli domluvit');
                                                        writeln; writeln('To, co mas na krku, je troli zub??!! Moc pekny kousek Za ten zub ti tu zbroj dam, plati?');
                                                        repeat
                                                          writeln;writeln;
                                                          textcolor(11);
                                                          writeln('Zadej akci (1-2)');
                                                          textcolor(15);
                                                          writeln('1-ANO');
                                                          writeln('2-NE');
                                                          writeln;
                                                          readln(a);
                                                          case a of
                                                          1:begin textcolor(14); writeln('Dekuji ti, udelal jsi vyhodny obchod!'); zbroj:=2; pokr:=31; end;
                                                          2:begin textcolor(14); writeln('Haha, uvidis, ze se brzo vratis!'); pokr:=31; end
                                                          else writeln('chyba');
                                                          end;
                                                        until pokr=31;
                                                      end
                                                    else begin textcolor(12); writeln('Tuto zbroj uz vlastnis'); end;
                                        end;
                                      2:pokr:=31;
                                      else writeln('chyba');
                                      end;
                                    until pokr=31;
         end;
       2:begin textcolor(14);
               writeln('Opustil jsi kram');
               pokr:=0;
         end;
       else writeln('chyba');
       end;
     until pokr=0;
    end;
                          4:begin textcolor(14); writeln('K princezne Jasmine se dostanes severni cestou z mesta. Jit ji osvobodit je sebevrazda! Davej si po ceste pozor, jeste pred dracim hradem je nejaky podivny saman!'); end;
                          else writeln('chyba');
                          end;
                    until (pokr=4) or (pokr=18);
               end;

if pokr=18 then begin
                  repeat
                    writeln;writeln;
                     textcolor(11);
                     writeln('Zadej akci (1-3)');
                     textcolor(15);
                     writeln('1-Dat se k hradu');
                     writeln('2-Dat se na zapad do udoli');
                     writeln('3-Dat se do mesta');
                     readln(a);
                     writeln;
                     case a of
                     1:begin textcolor(14);
                             if brana=0 then
                                          begin
                                            writeln('Dosel jsi pred brany hradu, ktery obyva mocny drak Parek.');
                                            pokr:=24;
                                          end
                                        else
                                          begin
                                            writeln('Dosel jsi do hradni haly.');
                                            pokr:=26;
                                          end;
                       end;
                     2:begin textcolor(14); writeln('Dosel jsi do maleho utulneho udolicka obyvaneho nebezpecne a stare vzhlizejicim orkem.'); pokr:=23; end;
                     3:begin textcolor(14); writeln('Dosel jsi do mesta Azair'); pokr:=17; end;
                     else writeln('chyba');
                     end;
                  until (pokr=17) or (pokr=23) or (pokr=24);
                end;


if pokr=19 then
               begin
                    repeat
                          cadras_poprve:=1;
                          writeln;writeln;
                          textcolor(11);
                          if (talisman=0) and (sfinga_objevena=1) then writeln('Zadej akci(1-6)')
                                                                  else if saman_rada=0 then writeln('Zadej akci(1-5)');
                          if (zbroj=2) and (saman_rada=1) then writeln('Zadej akci(1-5 a 7)');
                          textcolor(15);
                          writeln('1-Ty musis byt urcite mocny wizard Cadras, o kterem mi vypravel bard Winty.');
                          writeln('2-Na cem jsi to prave pracoval?');
                          writeln('3-Je nejaka sance, ze bych se mohl stat tvym ucednikem?');
                          writeln('4-Povida se, ze jste s Kaspecem skolili draka, nemel bys pro me nejakou radu?');
                          writeln('5-Dekuji ti za vse, moc jsi mi pomohl. Teleportoval by jsi me prosim zpet z veze?');
                          if (talisman=0) and (sfinga_objevena=1) then writeln('6-V nedaleké jeskyni jsem naleznul sfingu, potreboval bych pomoct s jeji hadankou. Rika se v ni: "Hadanka"');
                          if (zbroj=2) and (saman_rada=1) then writeln('7-V jednom udoli jsem potkal orkskeho samana, ktery mi rekl, ze se tato zbroj da enchantovat, dokazal bys to?');
                          readln(a);
                          writeln;
                          case a of
                          1:begin textcolor(14); writeln('Takze uz jsi mluvil s Wintym, doufam, ze alespon neco z toho, co ti rekl se trochu blizi skutecnosti. Ano, jsem Cadras a kdysi jsem s nim a Kaspecem zazil nemalo dobroduzstvi. Co te ke mne privadi?'); end;
                          2:begin textcolor(14); writeln('Moje nova smes, kombinace kofoly a vytazku z aloe vera. Zbavuje opilosti a navic ti docasne zlepsi retoricke schopnosti...po tomhle uz ani Winty nebude uplne k nicemu.'); end;
                          3:begin textcolor(14); writeln('Sice nevypadas uplne marne, ale obavam se, ze na takove veci nemam momentalne cas...mozna pozdeji.'); end;
                          4:begin textcolor(14); writeln('Jiste, ze ti dam radu. Pokud to jde, tak se drakum vyhybej velkym obloukem, mnoho dobrych valecniku v souboji s nimi padlo. Ale vidim, ze ti to nerozmluvim, tak si alespon vezmi tento svitek, pomoci ktereho vycarujes quagmire, pomuze ti to draka zpomalit.'); end;
                          5:begin textcolor(14); writeln('Neni zac. Preji ti mnoho stesti na tvych cestach.');writeln;writeln;writeln('Objevil jsi se u veze');pokr:=7; end;
                          6:begin if (talisman=0) and (sfinga_objevena=1) then begin textcolor(14); writeln('Tady mu naprosto genialne poradim'); end
                                  else writeln('chyba');
                            end;
                          7:begin if ((zbroj=2) and (saman_rada=1)) then begin
                                                                          textcolor(14);
                                                                          writeln('Ano, uz jsem nad tim take premyslel, a presne vim, cim tu zbroj obdarit.');
                                                                          writeln;writeln;
                                                                          writeln('(O hodne chvil pozdeji...)');
                                                                          writeln;writeln;
                                                                          writeln('Tadaa, tady mas mocnou fire-enchanted zbroj, proti drakovi se ti bude hodit.');
                                                                          zbroj:=3;
                                                       end
                                                                   else writeln('chyba');
                            end;
                          else writeln('chyba');
                          end;
                    until (pokr=7);
               end;


if pokr=20 then begin
                   repeat
                     writeln;writeln;
                     textcolor(11);
                     writeln('Zadej akci (1-3)');
                     textcolor(15);
                     writeln('1-Koupit si pintu piva (zadarmo)');
                     writeln('2-Pokecat s Wintym');
                     writeln('3-Opustit hospodu');
                     readln(a);
                     writeln;
                     case a of
                     1:begin textcolor(14); writeln('Dal sis pivko...hezky napenene a ho',chr(253),'ke');end;
                     2:begin textcolor(10); writeln('Zdravim te!');writeln;
                             textcolor(14); writeln('Vitej poutniku, ja jsem slavny bard Winty. Jiste jsi jiz nekdy cetl me srdceryvne verse ci potkal nekterou z mych zhrzenych milenek. Pojd, dej si se mnou skopek cerneho!');
                             pokr:=21;
                       end;
                     3:begin textcolor(14); writeln('Opustil jsi hospodu');
                             pokr:=0;
                       end;
                     else writeln('chyba');
                     end;
                   until (pokr=0) or (pokr=21);
                 end;



if pokr=21 then begin
                    repeat
                      writeln;writeln;
                      textcolor(11);
                      if (cadras=1) and (prozkoumana_vez=1) then writeln('Zadej akci (1-7)')
                                                            else if (slysel=1) and (struny=1) and (balada=1) then writeln('Zadej akci (1-6)')
                                                                                                             else if (slysel=1) and (struny=1) and (balada=0) then writeln('Zadej akci (1-4)')
                                                                                                                                                              else if (slysel=1) and (struny=0) and (balada=0) then writeln('Zadej akci (1-3)')
                                                                                                                                                                                                               else if (slysel=0) and (struny=0) and (balada=0) then writeln('Zadej akci (1-2)')
                                                                                                                                                                                                                                                                else if (cadras=1) and (prozkoumana_vez=1) then writeln('Zadej akci (1-7)');
                      textcolor(15);
                      writeln('1-Slysel jsi nekdy o princezne Jasmine?');
                      writeln('2-Konec rozhovoru');
                      if slysel=1 then writeln('3-A nemas nahodou tuseni jak s takovym drakem bojovat?');
                      if struny=1 then writeln('4-Nechat si zahrat Wintyho baladu');
                      if balada=1 then begin writeln('5-Kdo je ten Kaspec?');
                                             writeln('6-Povez mi vice o ',chr(172),'ard',chr(160),'',chr(231),'ovi');
                                       end;
                      if (cadras=1) and (prozkoumana_vez=1) then writeln('7-Zeptat se na Cadrasovu vez');
                      readln(a);
                      writeln;
                      case a of
                      1:begin textcolor(14); write('Jiste, nedavno jsem mel tu cest se ji dvorit, ale jeden ze slechticu to nemohl prekousnout, a tak jsem se radeji pod hrozbou vyhruzek vytratil.');
                              writeln(' Ale co jsem slysel, to misto uz neni co byvalo, od te doby, co se tam usidlil drak Parek a vsechny snedl, aby mel s princeznou intimco.');
                              slysel:=1; end;
                      2:begin textcolor(14); writeln('Ukoncil jsi rozhovor'); pokr:=20; end;
                      3:begin if slysel=1 then begin textcolor(14); write('Osobne jsem s drakem nebojoval, ale kdysi jsem byl soucasti skupiny mocnych bojovniku, kteri draka skolili. Jestli chces, zazpivam ti o nich jednu z mych balad. Jenom si naladim...sakra, nemam struny!');
                                                     writeln(' Musel jsem je vytrousit nekde u trola, kdyz jsem se dekoval z hradu. Prines mi je, a dozvis se vse!');
                                                     poslano_pro_struny:=1;
                                               end
                                          else writeln('chyba');
                        end;
                      4:begin if struny=1 then begin textcolor(14); writeln('Jako maleho lucistnika,');
                                                                    writeln('pozvali me do party.');
                                                                    writeln('Putovali jsme siroko daleko,');
                                                                    writeln('az se nam kourilo od paty.');
                                                                    writeln;
                                                                    writeln('Na nasich cestach jsme narazili na mnoho stvur');
                                                                    writeln('a jedna z nich byla jako z nocnich mur.');
                                                                    writeln('Velka bytost hroznou silou vladnouci,');
                                                                    writeln('ze chrtanu se ji valil ohen planouci.');
                                                                    writeln;
                                                                    writeln('Byl to obrovsky a strasny drak,');
                                                                    writeln('ktery dal nepratelum vzdy na frak.');
                                                                    writeln('Ale hlavu vzhuru, kdo to prisel!');
                                                                    writeln('Nase mocna skupina.');
                                                                    writeln('Kazdy o nas nekdy slysel');
                                                                    writeln('kdo ne, tak ho proklinam!');
                                                                    writeln;
                                                                    writeln('Cadras vytvari magickou ochranu,');
                                                                    writeln('aby nas ochranil pred ohnem,');
                                                                    writeln('jimz drak tak obratne vladne.');
                                                                    writeln('Smrt valici se mu ze chrtanu,');
                                                                    writeln('co zasahne, to mrtve padne.');
                                                                    writeln;
                                                                    writeln('Kaspecuv katar posledni ranu zasazuje,');
                                                                    writeln('drakovo srdce hlasite exploduje.');
                                                                    writeln('Za pomoci sipu, magie a mece');
                                                                    writeln('krev uz z draka krasne tece.');
                                                                    balada:=1; end
                                          else writeln('chyba');
                        end;
                      5:begin if balada=1 then begin textcolor(14); writeln('Jo mocny assassin Kaspec, to je chlapik... Prosli jsme spolu tolika hospodskymi potyckami, ze nam zakazali vstup skoro vsude. Vzdy vyhral, protoze jel vzdy jen na Kofole. Jeho bojove umeni je nevidane a co se tyce draku, je to opravdovy znalec.');
                                                      kaspec:=1;
                                               end
                                          else writeln('chyba');
                        end;
                      6:begin if balada=1 then begin textcolor(14);writeln('Myslis Cadrase. Jo moudry wizard Cadras... Jako maly cetl prilis mnoho knih o velkych magicich, takze te asi neprekvapi, ze si postavil vysokou vez na kopci skoro v pustinach.');
                                                     writeln(' Sice s nami nechtel vymetat nevestince, asi proto, ze vzdy vedel, jak to skonci, ale obratnejsiho maga jen tak neuvidis.');
                                                     writeln(' Dodnes nezapomenu na kouzlo, kterym draka v mziku oka znehybnil, to bylo neco. A take je to nejvetsi znalec Sfing v kralovstvi. Takze pokud jsi fanda nekolikahodinovych prednasek, je to tvuj clovek. Ale byva dost podrazdeny, kdyz ho nekdo prerusi');
                                                     write(' pri praci.');
                                                     cadras:=1;
                                               end
                                          else writeln('chyba');
                        end;
                      7:begin
                          if (cadras=1) and (prozkoumana_vez=1) then begin
                                                                       textcolor(10); writeln('Tak jsem dosel az k Cadrasove vezi, ale nepovedlo se mi dostat se dovnitr, mas s tim nejake zkusenosti?');
                                                                       writeln;
                                                                       textcolor(14); writeln('No jo, uplne jsem na to zapomnel, aby te vez pustila, musis pekne poprosit a vedet, za kym jdes. Ten starej paprda je moc vysazenej na dobre mravy.');
                                                                     end;

                        end;
                      else writeln('chyba');
                      end;
                    until pokr=20;
                 end;



if (pokr=22) and (zub=0) then
              begin
                   repeat
                   writeln;writeln;
                   textcolor(11);
                   writeln('Zadej akci (1-3)');
                   textcolor(15);
                   writeln('1-Utect');
                   writeln('2-Bojovat s trolem');
                   writeln('3-Posrat se strachy');
                   readln(a);
                   writeln;
                   case a of
                   1:begin textcolor(14); writeln('Dosel jsi do lesa'); pokr:=4; end;
                   2:begin if ((zbran=3) and (boj=1) and (zbroj=1)) or ((zbran=3) and (boj=2)) then
                                                                                                      begin
                                                                                                        textcolor(14);
                                                                                                        writeln('Zautocil jsi na trola a svou mocnou sekerou jsi mu udelal skaredou ranu na leve pazi.');
                                                                                                        writeln;
                                                                                                        write('Trol se dava do utoku ');
                                                                                                        if boj=2 then writeln('a diky tvemu skvelemu umeni, ktere te naucil Kaspec, jsi se utoku trola bez problemu vyhnul.')
                                                                                                                  else writeln(' a obrovskou prackou ta zasahl primo do hrudi. Ale diky tve silne zbroji jsi se dokazal z tohoto utoku oklepat.');
                                                                                                        writeln;
                                                                                                        writeln('A opet se davas do utoku a touto silnou ranou primo na krk jsi trola skolil. Jako trofej jsi z nej ziskal troli zub a ziskal jsi pristup do mesta Azair');
                                                                                                        writeln;
                                                                                                        writeln('Jsi ve meste Azair');
                                                                                                        zub:=1;
                                                                                                        pokr:=17;
                                                                                                      end
                                                                                                    else
                                                                                                      begin
                                                                                                        textcolor(14);
                                                                                                        writeln('Trol se naprahuje k utoku. Jeho obrovska pracka te trefila a ihned ukoncila tvuj zivot. Ocitas se ve meste Segard');
                                                                                                        pokr:=0;
                                                                                                      end;
                     end;
                   3:begin textcolor(14); writeln('Vysrat ses mel na lesni krizovatce!!');end;
                   else writeln('chyba');
                   end;
                   until (pokr=4) or (pokr=0) or (pokr=17);
              end;


if pokr=23 then begin
                   repeat
                     textcolor(14);
                     if ((zbran=4) and (zbroj<3)) then begin
                                                          writeln;
                                                          writeln('Cizinec se vratit zivy, dat mu jeste jednu radu.');
                                                          writeln;writeln;
                                                          if zbroj=2 then begin
                                                                           writeln('Tvuj zbroj se dat enchantovat, pokud cizinec znat nekoho kdo umi, vyuzit jeste pred boj. Nejaky mocny carodej by mohl znat.');
                                                                          end
                                                                     else begin
                                                                            writeln('Obchodnik v nedaleke mesto prodavat magicka zbroj, co jit enchantovat, cizinec vyuzit v boji s drak. Nejaky mocny carodej by mohl znat.');
                                                                          end;
                                                          writeln; writeln;
                                                          writeln('Zha-pek prat cizinec hodne stesti.');
                                                          saman_rada:=1;
                                                      end;
                     if talisman=0 then begin writeln; writeln('Ork bez vahani na tebe metl svuj fireball a spalil te na prach. Objevil jsi se ve meste Azair'); pokr:=17; end
                                   else begin if saman_poprve=0 then begin
                                                                        writeln; writeln('Ork uvidel talisman visici na tvem krku a promluvil k tobe v cizi reci, ktere ovsem nejakym kouzlem rozumis.');
                                                                        writeln;
                                                                        writeln('Zha-pek vitat cizinec. Cizinec jit porazit drak? Cizinec potrebovat Crush-pack. Za Zha-pekem lezet v krypta, ve ktere cizinec najit pomoc.');
                                                                        writeln;
                                                                        textcolor(10); writeln('Dekuji ti, moudry samane.');
                                                                        writeln;
                                                                        textcolor(14); writeln('Nez cizinec jit na draka, jeste navstivit Zha-peka, mit jeste nekolik rad.');
                                                                        saman_poprve:=1;
                                                                      end;
                                              writeln;writeln;
                                              textcolor(11);
                                              writeln('Zadej akci (1-2)');
                                              textcolor(15);
                                              writeln('1-Jit do krypty');
                                              writeln('2-Jit zpet ke krizovatce');
                                              readln(a);
                                              writeln;
                                              case a of
                                              1:begin textcolor(14); writeln('Po starych opraskanych schodech jsi se dostal do krypty. Na prave i leve stene krypty je tlacitko.'); pokr:=25; end;
                                              2:begin textcolor(14); writeln('Dostal ses ke krizovatce'); pokr:=18; end;
                                              else writeln('chyba');
                                              end;
                                        end;
                   until (pokr=18) or (pokr=25) or (pokr=17);
                 end;



if pokr=24 then begin
                   repeat
                     writeln;writeln;
                     textcolor(11);
                     if ((zbran<4) and (boj<2)) then writeln('Zadej akci (1-3)')
                                                else if ((zbran=4) and (boj=2)) then writeln('Zadej akci (1-5)')
                                                                                else if zbran=4 then writeln('Zadej akci (1-4)')
                                                                                                else writeln('Zadej akci (1-3 a 5)');
                     textcolor(15);
                     writeln('1-Zabusit na obrovska vrata klepadlem');
                     writeln('2-Zarvat na Parka');
                     writeln('3-Vratit se k minule krizovatce');
                     if zbran=4 then writeln('4-Pouzit na branu Crush-pack');
                     if boj=2 then writeln('5-Pomoci kaspecovske finty se dostat dovnitr');
                     readln(a);
                     writeln;
                     case a of
                     1:begin textcolor(14); writeln('Nic se nestalo'); end;
                     2:begin textcolor(14); writeln('Nic se nestalo'); end;
                     3:begin textcolor(14); writeln('Dostal ses ke krizovatce'); pokr:=18; end;
                     4:begin
                         if zbran=4 then
                                    begin
                                      textcolor(14);
                                      writeln('Z brany jsou trosky a ty vstupujes do haly.');
                                      brana:=1;
                                      pokr:=26;
                                    end
                                  else writeln('chyba');
                       end;
                     5:begin
                         if boj=2 then
                                    begin
                                      textcolor(14);
                                      writeln('Pomoci kaspecovske finty jsi se dostal do hradu a otevrel branu zevnitr pro pripadny utek. Vztupujes do hradni haly');
                                      brana:=1;
                                      pokr:=26;
                                    end
                                  else writeln('chyba');
                       end;
                     else writeln('chyba');
                     end;
                   until (pokr=18);
                 end;



if pokr=25 then begin
                  repeat
                     writeln;writeln;
                     textcolor(11);
                     writeln('Zadej akci (1-3)');
                     textcolor(15);
                     writeln('1-Jit ven z krypty');
                     writeln('2-Stisknout prave tlacitko');
                     writeln('3-Stisknout leve tlacitko');
                     readln(a);
                     writeln;
                     case a of
                     1:begin textcolor(14); writeln('Vysel jsi ven z krypty k samanovi.'); pokr:=23; end;
                     2:begin
                            textcolor(14); write('Spustil jsi tim nejaky mechanismus a najednou se na tebe ze stropu riti obrovskou rychlosti sekera');
                            if boj=2 then writeln(', ale diky hbitosti, kterou te naucil Kaspec, jsi se ji dokazal vyhnout.')
                                     else begin writeln(' a nebyl jsi prilis rychly, aby jses vyhnul sekere a ta te presne v pul rozdelila. Jsi ve meste Azair.'); pokr:=17; end;
                       end;
                     3:begin
                         if zbran<4
                           then
                           begin
                            textcolor(14); writeln('Chvili bylo absolutni ticho a najednou se zem zatrasla. Uprostred krypty se zjevil desivy kostlivec drzejic zarici mec.');
                            writeln;
                            writeln('Hrubym hlasem promluvil: Jdes si pro tento mec, vid? Smrtelnice. Dam ti ho, ale nejdriv musim zjistit jake jsou tve umysly s nim nalozit, proto se te zeptam na par otazek.');
                               writeln;writeln;
                               textcolor(11);
                               writeln('Zadej akci (1-2)');
                               textcolor(15);
                               writeln('1-Vyzvat kostlivce k otazkam');
                               writeln('2-Opustit misto');
                               readln(a);
                               writeln;
                               case a of
                               1:begin
                                    textcolor(14); writeln('Jake jsou tve umysly s mecem?');
                                    writeln;writeln;
                                    textcolor(11);
                                    writeln('Zadej akci (1-3)');
                                    textcolor(15);
                                    writeln('1-Chci zabit Parka a stat se slavnym');
                                    writeln('2-Chci osvobodit princeznu ze sparu Parka');
                                    writeln('3-Mame narozeniny a chceme to!');
                                    readln(a);
                                    writeln;
                                    case a of
                                    1..2:begin
                                            textcolor(14);
                                            if a=1 then writeln('To neni moc vznesene. Ale Parek mi jako malemu kostovi kradl veceri, coz jsem mu nikdy neodpustil. Dobra, pomohu ti.')
                                                   else writeln('Ah, take jsem kdysi miloval, byla to opravdu kost, nikdy na to nezapomenu. Dobra tedy, pomohu ti.');
                                            writeln;
                                            writeln('Ma druha otazka zni: Cim jsi prokazal svou velkou silu, potrebnou k boji s Parkem?');
                                               writeln;writeln;
                                               textcolor(11);
                                               writeln('Zadej akci (1-2)');
                                               textcolor(15);
                                               writeln('1-Trhal jsem na farme turiny!!');
                                               writeln('2-No, vlastne jsem nic moc nesvedl');
                                               readln(a);
                                               writeln;
                                               case a of
                                               1:begin textcolor(14);
                                                       writeln('Haha, no to jsi me ale pobavil! Ale na zacatek dobre. Pokracuj...');
                                                          writeln;writeln;
                                                          textcolor(11);
                                                          writeln('Zadej akci (1-2)');
                                                          textcolor(15);
                                                          writeln('1-Skolil jsem smecku vlku!!!');
                                                          writeln('2-No, to bude tak vse');
                                                          readln(a);
                                                          writeln;
                                                          case a of
                                                          1:begin
                                                               textcolor(14);
                                                               writeln('Takze nejake zkusenosti s bojem uz mas, to rad slysim. Ale povezme si na rovinu... smecka nejakych stenat a drak je trosku jine kafe, nemyslis? Tak co tam mas dal?');
                                                               writeln;writeln;
                                                               textcolor(11);
                                                               writeln('Zadej akci (1-2)');
                                                               textcolor(15);
                                                               writeln('1-Poradil jsem si s celym taboristem banditu!!!!');
                                                               writeln('2-No, to bude tak vse');
                                                               readln(a);
                                                               writeln;
                                                               case a of
                                                               1:begin
                                                                    textcolor(14);
                                                                    writeln('Konecne dukaz skveleho bojoveho umu. Co tam mame dal?');
                                                                    writeln;writeln;
                                                                    textcolor(11);
                                                                    writeln('Zadej akci (1-2)');
                                                                    textcolor(15);
                                                                    writeln('1-Rozsekal jsem na kousky obrovskeho trola!!!!!');
                                                                    writeln('2-No, to bude tak vse');
                                                                    readln(a);
                                                                    writeln;
                                                                    case a of
                                                                    1:begin
                                                                         textcolor(14);
                                                                         writeln('Takze trol. Jeste bys mel neco na svem seznamu?');
                                                                         writeln;writeln;
                                                                         textcolor(11);
                                                                         writeln('Zadej akci (1-2)');
                                                                         textcolor(15);
                                                                         writeln('1-Poradil jsem si s mocnym ohnivym orkskym samanem!!!!!!');
                                                                         writeln('2-No, to bude tak vse');
                                                                         readln(a);
                                                                         writeln;
                                                                         case a of
                                                                         1:begin
                                                                              textcolor(14);
                                                                              writeln('Ty se opovazujes mi lhat?! Mas stesti, ze vse zapomenu, az zmizim.');
                                                                              writeln;writeln;
                                                                              writeln('Kostlivec te teleportoval k orkskemu samanovi');
                                                                              pokr:=23
                                                                           end;
                                                                         2:begin
                                                                              //TU UZ JE PROGRESS
                                                                              textcolor(14);
                                                                              writeln('Dobra, svaly na to mas, ale vis, jak v boji s drakem prezit?');

                                                                              repeat
                                                                                writeln;writeln;
                                                                                textcolor(11);
                                                                                writeln('Zadej akci (1-4)');
                                                                                textcolor(15);
                                                                                writeln('1-Slysel jsem Wintyho baladu');
                                                                                writeln('2-Absolboval jsem Kaspecuv vycvik');
                                                                                writeln('3-Cadras mi dal svitek quagmiru na zpomaleni mrstneho Parka');
                                                                                writeln('4-To je vse');
                                                                                readln(a);
                                                                                writeln;
                                                                                case a of
                                                                                1:begin
                                                                                    textcolor(14);
                                                                                    writeln('Ano, Wintyho blada je ma oblibena a je moc poucna. Neco dalsiho?');
                                                                                    kosta_winty:=1;
                                                                                  end;
                                                                                2:begin
                                                                                    textcolor(14);
                                                                                    writeln('Kaspec ma mnoho zkusenosti s boji s draky, urcite ti jeho mrstnost prijde vhod. Neco dalsiho?');
                                                                                    kosta_kaspec:=1;
                                                                                  end;
                                                                                3:begin
                                                                                    textcolor(14);
                                                                                    writeln('Oo moudry cadras, urcite te vyzbrojil nejen quagmirem, ale i dalsimy uzitecnymi radami. Neco dalsiho?');
                                                                                    kosta_cadras:=1;
                                                                                  end;
                                                                                4:begin
                                                                                    textcolor(14);
                                                                                    if ((kosta_winty=1) and (kosta_kaspec=1) and (kosta_cadras=1))
                                                                                      then begin
                                                                                              writeln('Vypada to, ze mas vsechny predpoklady draka porazit. Davam ti tedy mocny Crush-Pack, necht prezijes dele nez jeho predchozi majitel, ktereho rozsapaly veverky.');
                                                                                              zbran:=4;
                                                                                           end
                                                                                      else writeln('To mi bouzel nestaci. Budes si muset projit mym vyslechem znovu');
                                                                                    writeln;writeln;
                                                                                    writeln('Kostlivec te teleportoval k orkskemu samanovi');
                                                                                    pokr:=23;
                                                                                  end;

                                                                                else writeln('chyba');
                                                                                end;

                                                                              until pokr=23;
                                                                           end;

                                                                         else writeln('chyba');
                                                                         end;
                                                                      end;
                                                                    2:begin
                                                                         textcolor(14);
                                                                         writeln('Vyporadat se s taboristem banditu je uz docela chvalihodne, ale na Parka to stale zdaleka nestaci. Vrat se az budes umet vice');
                                                                         writeln;writeln;
                                                                         writeln('Kostlivec te teleportoval k orkskemu samanovi');
                                                                         pokr:=23
                                                                      end;

                                                                    else writeln('chyba');
                                                                    end;
                                                                 end;
                                                               2:begin
                                                                    textcolor(14);
                                                                    writeln('To bys prece nechtel bojovat s drakem, kdyz jsi bojoval jen s nejakymi psy. Vrat se pozdeji.');
                                                                    writeln;writeln;
                                                                    writeln('Kostlivec te teleportoval k orkskemu samanovi');
                                                                    pokr:=23
                                                                 end;

                                                               else writeln('cyba');
                                                               end;

                                                            end;
                                                          2:begin
                                                               textcolor(14);
                                                               writeln('A to by jsi chtel s takovym drakem bojovat, kdyz umis jen trhat turiny? By jsi Parkovi tak maximalne mohl vytrhat chlupy na zadku a ne s nim bojovat. Vrat se, az neco dokazes');
                                                               writeln;writeln;
                                                               writeln('Kostlivec te teleportoval k orkskemu samanovi');
                                                               pokr:=23
                                                            end;

                                                          else writeln('chyba');
                                                          end;
                                                 end;
                                               2:begin
                                                    textcolor(14);
                                                    writeln('Tak to se mas jeste opravdu hodne co ucit. Myslim ze se bez jeste trosku kouknout do sveta nez pujdes na Parka');
                                                    writeln;writeln;
                                                    writeln('Kostlivec te teleportoval k orkskemu samanovi');
                                                    pokr:=23
                                                 end;

                                               else writeln('chyba');
                                               end;
                                         end;
                                    3:begin textcolor(14); writeln('dobry pokus, ale ne'); writeln;writeln; writeln('Kostlivec te teleportoval k orkskemu samanovi'); pokr:=23 end;

                                    else writeln('chyba');
                                    end;
                                 end;
                               2:begin textcolor(14); writeln('Vysel jsi ven z krypty k samanovi.'); pokr:=23; end;

                               else writeln('chyba');
                               end;
                           end
                           else
                             begin
                               textcolor(14);
                               writeln('Na zdi se objevil napis:');
                               writeln;
                               textcolor(12);
                               writeln('Error 404: Not found');
                             end;
                       end;

                     else writeln('chyba');
                     end;
                  until (pokr=17) or (pokr=23);
                end;


if pokr=26 then
              begin
                   repeat
                     writeln;writeln;
                     textcolor(11);
                     writeln('Zadej akci (1-3)');
                     textcolor(15);
                     writeln('1-Utect');
                     writeln('2-Bojovat s trolem');
                     writeln('3-Posrat se strachy');
                     readln(a);
                     writeln;
                     case a of
                     1: writeln('hoj');
                     2: writeln('zdar');
                     else writeln('chyba');
                     end;
                   until pokr=18;
              end;


UNTIL F=1;
readln;
END.
