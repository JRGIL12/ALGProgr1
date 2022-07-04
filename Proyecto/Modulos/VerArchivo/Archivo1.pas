program archivos;
var
 ent: text;

procedure verArchivoenPantalla(var c:text;nombre:string);
var
  palabraC:string;
begin
 writeln;
 writeln('archivo de  ',nombre);
 reset(c);
 if eof(c) then
   writeln('Archivo vacio')
 else
   begin
     while not(eof(c)) do
       begin
         readln(c,palabraC);
         writeln(palabraC);
       end;
   end;
 close(c);
end;

begin {programa principal}
 assign(ent,'H:\ALG_PROG_1\Proyecto\Modulos\VerArchivo\entrada.txt');
 verArchivoenPantalla(ent,'entrada1');
 readln();;
end.           
