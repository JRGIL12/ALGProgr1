{ Función para convertir de texto a entero }
function ValorEntero(texto: string): integer;
var
  valor, codigoDeError: integer;
begin
  valor := 0:
  val(texto, valor, codigoDeError);
  ValorEntero := valor;
end;

{ Programa de prueba }
begin
  Writeln(ValorEntero("123"));
  Readln;
end.
