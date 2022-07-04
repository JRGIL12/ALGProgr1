Program Aca;
{ACA: juego de la vida}
uses
 crt; //Libreria


procedure CrearCaldo;
var
 GenerarCaldo:char;
 Caldo: boolean;
 I,J:integer;
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
              Caldo:=true;
              Case GenerarCaldo of
                   'S':
                     Begin
                      Writeln(' Se generara un caldo con las preferencias del usuario');
                      Writeln('');
                      // en teoria las dimenciones son desde 10 hasta 50, se hara desde 5 para ilustrar
                      Writeln('   Ingrese Las dimenciones');
                      repeat
                       Write('           Filas:');
                       readln(I);
                      until ( (i>5) and (i<50) );//Valida las filas

                      Repeat
                       Write('           Columnas:');
                       readln(J);
                      until ( (i>5) and (J<50) );//Valida las columnas
                     end;
                   'N':
                     begin
                      Writeln('el caldo se genera aleatoriamente');
                      randomize;
                      I:=10+Random(40);
                      J:=10+Random(40);
                     end;
                   Else
                    Caldo:=false;
              end;
             Until Caldo  //cierra generar caldo
end;

Procedure opciones (opcion:integer;ExisteCaldo:boolean);

Begin
     Case Opcion of
          1: //Limpiar pantalla
            clrscr; //Limpia pantalla con libreria crt

          2: //Muestra caldo de cultivo
            begin


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
