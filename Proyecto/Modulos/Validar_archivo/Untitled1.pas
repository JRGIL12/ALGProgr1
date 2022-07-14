program archivos;
uses
 crt;
type
   vector= array [1..50] of string;
   matriz= array [1..2,1..50] of string;
var
 ent: text;

procedure verArchivoenPantalla(var c:text;nombre:string);

var
  palabraC,fila,columna:string;
  valor:vector;
  filcol:matriz;
  i,b,j,coma: integer;
begin
 writeln;
 writeln('archivo de  ',nombre);
 reset(c);
 for i:=1 to 50 do
      valor[i]:= ' ';
 b:=0;
 if eof(c) then
   writeln('Archivo vacio')
 else
   begin
     while not(eof(c)) do
       begin
         readln(c,palabraC);
         writeln(palabraC);
         b:=b+1;
         valor[b]:=palabraC;
       end;
   end;
 close(c);
 for i:=1 to b do
      write(valor[i],' | ');

 end;

begin {programa principal}
 assign(ent,'H:\ALG_PROG_1\Proyecto\Modulos\Validar_archivo\entrada.txt');
 verArchivoenPantalla(ent,'entrada1');
 readln();
end.           

