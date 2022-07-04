program Celdas_Vecinas;
uses
  crt;
type
 matriz= array [1..10, 1..10] of integer;
var
  celdasVecinas,CaldoDeCultivo:matriz;
  dato, c, y: integer;

function Vecinas(Caldo:matriz;Px,Py:integer):integer;
 var
  AuxX,AuxY,Temp:integer;
  Rango:boolean;
begin
  temp:=0;
  for AuxX:=-1 to 1 do
      for AuxY:=-1 to 1 do
          if ( (AuxX<>0) or (AuxY<>0) ) then
             begin
                  Rango:= (Px+AuxX) > 0 ;
                  Rango:= ( Rango and ((Px+AuxX) < 11) ) ;
                  Rango:= ( Rango and ((Py+AuxY) > 0) ) ;
                  Rango:= ( Rango and ((Py+AuxY) < 11) ) ;
                  If  Rango then
                     Temp:=temp+Caldo[Px+AuxX,Py+AuxY];
             end;
  Vecinas:=temp;
end;

begin
 //Llena caldo de cultivo
  randomize;
  For C:=1 to 10 do
    for y := 1 to 10 do 
      begin
        dato := Random(2);
        CaldoDeCultivo[c,y] := dato;
      end;
 //Modulo Principal, Calcular celdas vecinas
  For c := 1 to 10 do
    for y := 1 to 10 do
     CeldasVecinas[c,y]:=Vecinas(CaldoDeCultivo,c,y);
 //Imprime el caldo de cultivo
  for c := 1 to 10 do 
    begin
      for y := 1 to 10 do 
        begin
          write('|');
          write(CaldoDeCultivo[c,y]);
        end;
      writeln('|');
    end;
  readkey;
 //Imprime matriz celdas vecinas
 writeln('');
  for c := 1 to 10 do 
    begin
      for y := 1 to 10 do 
        begin
          write('|');
          write(CeldasVecinas[c,y]);
        end;
      writeln('|');
    end;

  readkey;
end.
