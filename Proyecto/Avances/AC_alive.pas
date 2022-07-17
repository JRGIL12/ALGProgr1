program MenuGrafico;
uses
    crt;
type
   Matriz= array [1..50,1..50] of integer;
var
   //Variables para el menu y opciones graficas  (op?opciones) (M?Menu) (SM?SubMenu )
   OpM,OpSM,OpISM,OpISM1{Opciones Internas del SubMenu 1}: integer;
   //Variables de comprobacion:
   Archivos:boolean;
   // variables principales
   CeldasVecinas,CaldoDeCultivo:matriz;
   Entrada,Salida:text;
   //Variables auxiliares
   x_Filas,y_columnas:integer;
   ruta,NombreDelArchivo:string;
   //Contadores
   Generacion,Poblacion:integer;

  ///////////////////////////////
 // 1.Procedimientos graficos //
///////////////////////////////
Procedure EspacioX(N:integer);
(* 1.1 Procedimiento para crear espacios en blanco *)
var i:integer;
begin
  if N>0 then
     for i := 1 to N do
         write(' ');
end;

procedure Centrar (objeto:string;Centrado:integer);
(* 1.2 Procedimiento para centrar un objeto *)
begin
  EspacioX(Centrado);write(objeto);espacioX(Centrado);writeln();
end;

procedure barra;
(* 1.3 Procedimiento para crear una barra de color *)
begin
  textcolor(cyan);Writeln('////////////////////////////////////////////////////////////////////////////////');NormVideo;
end;

procedure EntradaDeDatos;
(* 1.4 Procedimiento para que emuestre el simbolo para que entre un dato *)
begin
  textcolor(cyan);write(Chr(175));NormVideo;
end;

Procedure Presentacion;
(* 1.5 Procedimiento para La presentacion *)
Begin
 //Linea 0
 writeln('');
 //Linea 1
 write('  ');textbackground(cyan);write('  ');NormVideo;write(' ');
 write('  ');textbackground(cyan);write('   ');NormVideo;write(' ');
 write(' ');textbackground(cyan);write('  ');NormVideo;writeln(' ');
 //Linea 2
 write(' ');textbackground(cyan);write(' ');NormVideo;;write('  ');textbackground(cyan);write(' ');NormVideo;
 write(' ');textbackground(cyan);write(' ');NormVideo;write('   ');
 write(' ');textbackground(cyan);write(' ');NormVideo;write('  ');textbackground(cyan);writeln(' ');NormVideo;
 //Linea 3
 write(' ');textbackground(cyan);write('    ');NormVideo;
 write(' ');textbackground(cyan);write(' ');NormVideo;write('   ');
 write(' ');textbackground(cyan);writeln('    ');NormVideo;
 //Linea4
 write(' ');textbackground(cyan);write(' ');NormVideo;write('  ');textbackground(cyan);write(' ');NormVideo;
 write(' ');textbackground(cyan);write(' ');NormVideo;write('   ');
  write(' ');textbackground(cyan);write(' ');NormVideo;write('  ');textbackground(cyan);writeln(' ');NormVideo;
 //Linea 5
 write(' ');textbackground(cyan);write(' ');NormVideo;write('  ');textbackground(cyan);write(' ');NormVideo;
 write('  ');textbackground(cyan);write('   ');NormVideo;write(' ');
 textbackground(cyan);write(' ');NormVideo;write('  ');textbackground(cyan);write(' ');NormVideo;write(' ');
 //Continuacion de la linea 5
 textbackground(white);textcolor(cyan+blink);writeln(' Automata Celular alive');NormVideo;
 //linea de descipcion
 writeln();barra;
 write('La evolucion de la vida tiene una variedad de patrones reconocidos que provienen');
 Write('de determinadas posiciones iniciales. La vida es un ejemplo de emergencia y auto-organizacion.');
 Write(' Los automatas celulares son automatas simples que producen una   salida a partir de varias ');
 Write('entradas, modificando en el proceso su estado segun   una funcion de transicin. ');
 Write('Por lo general, en un automata celular, al igual que  en la evolucion, el estado de ');
 Write('una celula en una generacion determinada depende  unica y exclusivamente de los estados ');
 writeln('de las celulas vecinas y de su propio     estado en la generacion anterior.');
 writeln();barra;
 // creditos
 write(' ');textbackground(Lightcyan);textcolor(black);writeln(' Emily-Jesus ');NormVideo;
 writeln();EntradaDeDatos;
 Readln;
End;

Procedure Menu(NtabT,NTabOp:integer;subtitulo,op1,op2,op3:string;Ct,COp1,COp2,COp3:integer);
(* 1.6 Procedimiento para el menu reutilzable *)
Begin
 clrscr;writeln();writeln();writeln();writeln();writeln();{5 saltos de linea para intentar centrarlo }
 EspacioX(25);
 Textbackground(7);textcolor(3+blink);Writeln(' Automata Celular Alive ');normvideo;
 EspacioX(25);
 EspacioX(10-NtabT);Textbackground(7);textcolor(0);centrar(subtitulo,Ct);normvideo;
 Writeln();
 Writeln();
 EspacioX(30-NtabOp);write(1);
 Textbackground(7);textcolor(3);Centrar(op1,COp1);normvideo;Writeln();
 EspacioX(30-NtabOp);write(2);
 Textbackground(7);textcolor(3);Centrar(op2,COp2);normvideo;Writeln();
 EspacioX(30-NtabOp);write(3);
 Textbackground(7);textcolor(3);Centrar(op3,COp3);normvideo;Writeln();
 writeln();EspacioX(30);EntradaDeDatos;
End;

procedure Saliendo(name:string;tiempo:integer);
(* 1.7 Procedimiento para indicar la salida *)
begin
     textcolor(red);
     writeln(' Esta saliendo ',name);
     delay(tiempo);NormVideo;
end;

  ///////////////////////////////////////////////////////////////
 // 2. procedimientos de inicalzacion, validacion y impresion //
///////////////////////////////////////////////////////////////
Procedure validar(var Dato:integer;leer,escribir:boolean;name:string;LimSup,Liminf:integer);
(* 2.1 Procedimiento para validar dato *)
var
 valido:boolean;
begin
     repeat
            if escribir then
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

procedure Llenar_Matriz(MatrizALlenar:matriz;Dato:integer;Aleatorio:boolean);
(* 2.1 Procedimiento para llenar una matriz *)
var i,j:integer;
begin
  For i:=1 to 50 do
    for j := 1 to 50 do
      begin
        if Aleatorio then
           dato := Random(2);
        CaldoDeCultivo[i,j] := dato;
      end;
end;


Procedure inicializarDatosDeFormaPredeterminada;
//Nota: como solo se inicializan los datos, estos se pueden llamar de forma global sin pasarlos como parametros
begin
  Llenar_Matriz(CaldoDeCultivo,0,false);
  Llenar_Matriz(CeldasVecinas,0,false);
  Archivos:=false;
  x_filas:= 10 + random(41) ;
  y_Columnas:= 10 + random(41);  (* Se recomienda meter un dato menor a 40*)
  poblacion:=0;
  Generacion:=0;
  NombreDelArchivo:='entrada';
  Ruta:='C:\Datos\'+NombreDelArchivo+'.txt';
end;

procedure imprimir_Matriz(NombreDeLaMatriz:string;MatrizAimprimir:matriz;ImprimirCaldo:boolean;filas,columnas:integer);
var
 x,y:integer;
begin
  writeln('');
  EspacioX(3);Writeln(NombreDeLaMatriz);
  writeln('');
  if Columnas > 39 then
     begin
          EspacioX(3);Writeln('Dada la cantidad de columnas,');
          EspacioX(5);Writeln('la matriz podria no verse unforme,');
          EspacioX(7);Writeln('para evitar esto ingrese menos de 40 columnas');
     end;
  for x := 1 to Filas do
    begin
    EspacioX(40-columnas);
      for y := 1 to columnas do
        begin
          write('|');
          if ImprimirCaldo then
             begin
                  textbackground(MatrizAimprimir[x,y]);
                  write(' ');
             end
          else
              write(MatrizAimprimir[x,y]);
        end;
      writeln('|');
    end;
end;

procedure ImprimirArchivo(var A:text;nombre:string);
var
  palabraA:string;
begin
 writeln;
 writeln('archivo de  ',nombre);
 reset(A);
 if eof(A) then
   writeln('Archivo vacio')
 else
   begin
     while not(eof(A)) do
       begin
         readln(A,palabraA);
         writeln(palabraA);
       end;
   end;
 close(A);
end;

  ///////////////////////////
 // 0. Programa Principal //
///////////////////////////
begin
 randomize;
 presentacion;
 InicializarDatosDeFormaPredeterminada;
 repeat
    menu(1,-1,'MENU','Play','Sentings','Exit',1,3,1,3);
    validar(OpM,true,false,' el dato',3,0);barra;
    case OpM of
    1:
      Begin
           repeat
                 menu(1,2,'play','Info del Caldo','Editar Caldo',' Salir',1,1,2,5);
                 validar(OpSM,true,false,' el dato',3,0);barra;
                 if archivos then
                    assign(Entrada,ruta);
                 case OpSM of
                 1:
                  begin
                    EspacioX(10);writeln('Informacion Sobre El caldo de cultivo:');
                    Writeln('');
                    if Archivos then
                       ImprimirArchivo(Entrada,NombreDelArchivo);
                    EspacioX(5);Writeln('Dimenciones: ',x_filas,'x',y_Columnas);
                    EspacioX(5);Writeln('Poblacion: ',Poblacion);
                    EspacioX(5);Writeln('Generacion: ',Generacion);
                    imprimir_Matriz('Caldo de cultivo: ',CaldoDeCultivo,true,x_filas,y_columnas);
                    imprimir_Matriz('Celulas vecinas de cada celda: ',CeldasVecinas,false,x_filas,y_columnas);
                    EspacioX(4);EntradaDeDatos;readln();
                  end;
                 2:
                   Begin
                    repeat  
                        menu(4,3,'Editar Caldo','Avanzar Generacion',' Modificar Caldo',' Salir',1,1,2,7);
                        validar(OpISM,true,false,' el dato',3,0);barra;
                        Case OpISM of
                         1:
                          repeat
                            menu(8,12,'Avanzar Generacion','Mostrar Generacion por Generacion',' Mostrar Generacion N','Salir',1,1,7,15);
                            validar(opISM1,true,false,' el dato',3,0);barra;
                            Case opISM1 of
                             1:
                               begin
                                    writeln(' se avanzara mostrando cada generacion');

                                    readln();
                               end;
                             2:
                               begin
                                    writeln(' se avanzara hasat la generacion deseada');

                                    readln();
                               end;
                             3:
                                saliendo(' de Avanzar Generacion',500);
                             end;
                          Until opISM1=3;
                        2:
                         Writeln('');
                        3:
                          saliendo(' de editar Caldo',500);
                        end;
                    Until OpISM=3;
                   end;
                 3:
                   saliendo(' de la opcion Play',500);
                 end;
           until OpSM=3;
      end;
    2:
      Begin
           repeat
                  menu(2,5,'Sentings','Ver Congifuracion','Cambiar Configuracion','Salir',1,3,1,9);
                 validar(OpSM,true,false,' el dato',3,0);barra;
                 case OpSM of
                 1:
                   Begin
                        writeln(' La configuracion actual es:');

                        readln();
                   end;
                 2:
                   Begin
                        writeln(' aun no puede alterar la configuracion');

                        readln();
                   end;
                 3:
                   saliendo(' de la opcion Sentings',500);
                 end;
           until OpSM=3;
      end;
    3:
      saliendo('del programa principal',1000);
    end;
 until OpM=3;
end.
