program EsqueletoA1;
{}
uses
 crt;
type
   Matriz= array [1..50,1..50] of integer;
var
	Caldo,CeldasVecinas:matriz;
	poblacion,F{Fila},C{Columna},x{Aux fila},y{auxcolumna},z,Salir: integer;

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
				  // crear una funcion rango
                  Rango:= (Px+AuxX) > 0 ;
                  Rango:= ( Rango and ((Px+AuxX) < F+1) ) ;
                  Rango:= ( Rango and ((Py+AuxY) > 0) ) ;
                  Rango:= ( Rango and ((Py+AuxY) < C+1) ) ;
                  If  Rango then
                     Temp:=temp+Caldo[Px+AuxX,Py+AuxY];
             end;
  Vecinas:=temp;
 end;

Begin
 writeln('ACA');
 writeln('');
 write('Ingrese el numero de filas');readln(F);writeln('');
 write('Ingrese el numero de comlumnas');readln(C);writeln('');
 write('Ingrese la poblacion de celulas en la matriz'); Read(poblacion);writeln('');
 Randomize;
 z:=0;
 //Inicializamos la matriz
	for x := 1 to 10 do
		for y := 1 to 10 do 
			Caldo[x,y]:=0;
 //lenamos la matriz
 while z<> poblacion do
	Begin
		x:=1+random(F);
		y:=1+random(C);
		If Caldo[x,y]<>1 then
			begin
				Caldo[x,y]:=1;
				z:=z+1;
			end;
	End;
 //Imprime el caldo de cultivo
 writeln('Este es su caldo de cultivo ');
    for x := 1 to F do
        begin
             for y := 1 to C do
                 begin
                      write('|');
                      textbackground(Caldo[x,y]);
                      write(' ');normvideo;
                 end;
             writeln('|');
        end;
  //MAtriz celdas vecinas
    For x := 1 to F do
     for y := 1 to C do
     CeldasVecinas[x,y]:=Vecinas(Caldo,x,y);
  //Mueve la gneeracion
  For x := 1 to F do
     for y := 1 to C do
         if ((Caldo[x,y]=1) and (CeldasVecinas[x,y]=2)) then
            write(){ aca no ha pasado nada por que la celula sobrevive}
         else // caldo x,y= 0 o no hay 2 vecinas
             if CeldasVecinas[x,y]=3 then
                Caldo[x,y]:=1  { nace una celula}
             else {no sobrevive ni nace }
                Caldo[x,y]:=0;
  writeln('');
  //Imprime el caldo de cultivo
  writeln('Este es su caldo de cultivo despues de una generacion ');
    for x := 1 to F do
        begin
             for y := 1 to C do
                 begin
                      write('|');
                      textbackground(Caldo[x,y]);
                      write(' ');normvideo;
                 end;
             writeln('|');
        end;

 Readln(salir);
End.
