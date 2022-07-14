program archivos;
var
 ent: text;
 salida:string;

procedure separar(palabra:string);
var
   dato1,dato2:string;
   posicion, i, limite:integer;

Begin
  posicion:=pos(',',palabra);
  limite:=posicion-1;
  dato1:=' ';
    for i:=1 to limite do
        Begin
            dato1:= dato1+copy(palabra,i,1);
        end;
    delete(palabra,1,posicion);
    dato2:=palabra;

writeln('la fila es ', dato1);
writeln('la columna es ', dato2); 
writeln;
end;

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
         separar(palabraC);
       end;
   end;
 close(c);
end;



begin {programa principal}
 assign(ent,'C:\Users\Pinam\Downloads\archivo\entrada.txt');
 verArchivoenPantalla(ent,'entrada1');
 readln(salida);
end.          
