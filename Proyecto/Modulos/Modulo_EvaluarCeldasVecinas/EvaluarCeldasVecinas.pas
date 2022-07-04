Program Evaluar_celda;
{Modulo para evaluar celda}
type
 matriz= array [1..10, 1..10] of integer;
var
  celdasVecinas,CaldoDeCultivo:matriz;
  i,j:integer;

function Celdas_Vecinas(Caldo:matriz;Px,Py:integer):integer;
var
AuxX,AuxY,Temp:integer;
begin
  temp:=0;
  for i:=-1 to 1 do
      for j:=-1 to 1 do
          if ( (i<>0) or (j<>0) ) then
             Temp:=temp+1;
  Celdas_Vecinas:=temp;
end;


Begin
 writeln('');

 Readln;
End.
