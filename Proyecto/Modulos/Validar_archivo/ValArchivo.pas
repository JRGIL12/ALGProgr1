program archivos;
var
 ent: text;
 salida:string;

{ Función para convertir de texto a entero }
function ValorEntero(texto: string): integer;
var
  valor, codigoDeError: integer;
begin
  valor := 0;
  val(texto, valor, codigoDeError);
  if  ( (valor<0) or (valor>50) ) then
     writeln(' El Parametro esta fuera del rango permitido por favor verifiquelo');
  if codigoDeError <> 0 then
     writeln('hubo un error en la conversion de este parametro, por favor revise que sea un digito');
  ValorEntero := valor;
end;

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

writeln('la fila es ',ValorEntero(dato1));

writeln('la columna es ', ValorEntero(dato2));
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
 assign(ent,'H:\ALG_PROG_1\Proyecto\Modulos\Validar_archivo\entrada.txt');
 verArchivoenPantalla(ent,'entrada1');
 readln(salida);
end.          
