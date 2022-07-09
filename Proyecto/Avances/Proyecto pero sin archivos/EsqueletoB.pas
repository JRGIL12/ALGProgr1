program EsqueletoB;
{
 soldado esqueleto?
 el programa requiere filas, columnas y poblacion, dado estas geneera un caldo de cultivo 'caldo inicial'
 tambien tiene un procedimiento de transicion con el cual se puede avanzar generaciones del caldo de cultivo
}
uses
 crt;
type
   Matriz= array [1..50,1..50] of integer;
var
	Caldo,CeldasVecinas:matriz;
	poblacion,F{Fila},C{Columna},x{Aux fila},y{aux Columna},z{Aux Poblacion},Salir: integer;

procedure InicializarDatos;
begin
 //inicializamos z en 0
 z:=0;
 //Inicializamos la matriz con todos sus celdas en 0
	for x := 1 to F do
		for y := 1 to C do
			Caldo[x,y]:=0;
end;

procedure llenarMatrizxPoblacion;
begin
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
end;

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

procedure MatrizCeldasVecinas( var celda:matriz);
Begin
   For x := 1 to F do
     for y := 1 to C do
     Celda[x,y]:=Vecinas(Caldo,x,y);
end;

procedure ImprimirCaldo;
begin
    writeln('');
    for x := 1 to F do
        begin
             Write(' ');
             for y := 1 to C do
                 begin
                      write('|');
                      textbackground(Caldo[x,y]);
                      write(' ');normvideo;
                 end;
             writeln('|');
        end;
    writeln('');
end;

procedure Reglas;
begin
  For x := 1 to F do
     for y := 1 to C do
         if ((Caldo[x,y]=1) and (CeldasVecinas[x,y]=2)) then
            write(){ la celula sobrevive}
         else // caldo x,y= 0 o no hay 2 vecinas
             if CeldasVecinas[x,y]=3 then
                Caldo[x,y]:=1  { nace una celula}
             else {no sobrevive ni nace, es decir, muere o permanece en 0 }
                Caldo[x,y]:=0;
end;

Procedure transicion;
var
 t,gen:integer;
begin
 Write(' cuantas transiciones desea hacer?');readln(T);
 for gen:=1 to t do
     begin
          MatrizCeldasvecinas(CeldasVecinas);
          Reglas;
          writeln('Este es su caldo de cultivo en la generacion ',gen, ':');
          imprimircaldo;
     end;
end;

Begin   // Programa principal
 writeln('ACA');writeln('');
 write('Ingrese el numero de filas');readln(F);writeln('');
 write('Ingrese el numero de comlumnas');readln(C);writeln('');
 write('Ingrese la poblacion de celulas en la matriz'); Read(poblacion);writeln('');
 Randomize;
 InicializarDatos;
 llenarMatrizxPoblacion;
 writeln('Este es su caldo de cultivo Inicial');
 imprimircaldo;
 transicion;
 Readln(salir);
End.
