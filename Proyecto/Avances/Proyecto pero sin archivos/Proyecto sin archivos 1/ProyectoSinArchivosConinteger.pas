Program Aca;
{ACA: juego de la vida

Presenta problemas con el randomize}
uses
 crt; //Libreria
type
 Caldo=array[5..50, 5..50] of Integer;

procedure CelulasEncaldo(F,c:integer;var CaldoALlenar:Caldo);
var
   i,j:integer;
begin
 For i:=1 to f do
     For j:=1 to c do
           CaldoALlenar[f,c]:= random(1);
end;

procedure CrearCaldo(var Fil,col:integer;var CaldoACrear:Caldo;var Ecaldo:boolean);
var
 GenerarCaldo:char;
Begin
     Writeln('  No existe un Caldo de cultivo...');
     delay(100);
     Writeln('  Se debe generar uno...');
     delay(100);
     Writeln('  Desea crear el caldo? ');
     Write('  ');

     Repeat  //Presenta generar caldo
              readln(GenerarCaldo);
              GenerarCaldo:= Upcase(GenerarCaldo);
              ECaldo:=true;
              Case GenerarCaldo of
                   'S':
                     Begin
                      Writeln(' Se generara un caldo con las preferencias del usuario');
                      Writeln('');
                      // en teoria las dimenciones son desde 10 hasta 50, se hara desde 5 para ilustrar
                      Writeln('   Ingrese Las dimenciones');
                      repeat
                       Write('           Filas:');
                       readln(Fil);
                      until ( (Fil>=5) and (Fil<=50) );//Valida las filas

                      Repeat
                       Write('           Columnas:');
                       readln(Col);
                      until ( (Col>=5) and (col<=50) );//Valida las columnas
                     end;
                   'N':
                     begin
                      Writeln('el caldo se genera aleatoriamente');
                      randomize;
                      Fil:=10+Random(40);
                      Col:=10+Random(40);
                     end;
                   Else
                    ECaldo:=false;

              end;
              If Ecaldo then
                 CelulasEnCaldo(fil,col,CaldoACrear);
             Until ECaldo  //cierra generar caldo
end;

Procedure opciones (opcion:integer;ExisteCaldo:boolean);
 var
  CaldoDeCultivo: caldo;
  filas,columnas,i,j:integer;
Begin
     if Not(ExisteCaldo) then
        crearcaldo(filas,columnas,CaldoDeCultivo,existecaldo);
     Case Opcion of
          1: //Limpiar pantalla
            clrscr; //Limpia pantalla con libreria crt

          2: //Muestra caldo de cultivo
            begin
             For i:=1 to filas do
                   begin
                        For j:=1 to columnas do
                              begin
                                   write('|');
                                   textbackground(CaldoDeCultivo[i,j]);
                                   write(' ');
                              end;
                        writeln('|');
                        textbackground(0);
                   end;

            end; //cierra la opcion 2

          else  //Fuera del rango de opciones
              Writeln('La opcion no es valida');
     end;// cierra el case opcion
end;

Procedure Menu; //Menu del programa
Var
 opcion:integer;
 ExisteunCaldo:boolean;
begin
  ExisteunCaldo:=false;
  // no existe un caldo de cultivo
 Repeat   //Presenta el menu
  writeln(' Menu');
  Writeln('   0.Salir');
  writeln('   1.Limpiar pantalla');
  writeln('   2.Mostrar caldo de cultivo');
  writeln('   3.Mostrar matriz de Celdas vecinas');
  writeln('   4.Avanzar generacion en el caldo de cultivo');
  writeln('');
  Write('   ');
  Readln(Opcion);  //Lee las opciones del menu
  If Opcion<>0 then  //no ejecuta la condicion en caso que se desee salir
   Opciones(opcion,ExisteunCaldo); // llama las opciones
 until opcion=0  //Termina el menu

end;

Begin // cuerpo del programa
 writeln;
 Menu; //Llama al menu
 Writeln('       Enter para salir');
 Readln;
End.                  
