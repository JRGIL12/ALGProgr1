Program ValidarDato;
{ procediminto que valida cualquier dato entero }
var
 valor:integer;

Procedure validar(var Dato:integer;leer:boolean;name:string;LimSup,Liminf:integer);
var
 valido:boolean;
begin
     repeat
            Writeln('Ingrese',name,' ( max ',LimSup,' - min ',LimInf,' )');
            if leer then
                readln(Dato);
            if  Dato>LimSup then
                Writeln(name,'supera el limite ',LimSup);
            if  Dato<LimInF+1 then
                Writeln(name,'es inferior a el limite ',LimInf);
            valido:=( (Dato<LimSup+1)and(Dato>LimInf) );
     until valido;
end;

Begin
 writeln('');
 validar(valor,true,' El valor de prueba ',50,0);
 Writeln(valor);
 Readln;
End.
