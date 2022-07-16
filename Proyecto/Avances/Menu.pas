program MenuGrafico;
uses
    crt;
type
   Matriz= array [1..50,1..50] of integer;
var
   OpM{ opciones del Menu},OpSM{ opciones del SubMenu},OpISM{Opciones Internas del sub menu},opISM1: integer;

procedure barra;
begin
textcolor(cyan);Writeln('////////////////////////////////////////////////////////////////////////////////');NormVideo;
end;

Procedure Presentacion;
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
 writeln();
 barra;
 write('La evolucion de la vida tiene una variedad de patrones reconocidos que provienen');
 Write('de determinadas posiciones iniciales. La vida es un ejemplo de emergencia y auto-organizacion.');
 Write(' Los automatas celulares son automatas simples que producen una   salida a partir de varias ');
 Write('entradas, modificando en el proceso su estado segun   una funcion de transicin. ');
 Write('Por lo general, en un automata celular, al igual que  en la evolucion, el estado de ');
 Write('una celula en una generacion determinada depende  unica y exclusivamente de los estados ');
 writeln('de las celulas vecinas y de su propio     estado en la generacion anterior.');
 writeln();
 barra;
 // creditos
 write(' ');textbackground(Lightcyan);textcolor(black);writeln(' Emily-Jesus ');NormVideo;
 writeln();
 write(Chr(175));
 Readln;
End;

Procedure Menu(titulo,op1,op2,op3:string);
Begin
 clrscr;writeln();writeln();writeln();writeln();writeln();{5 saltos de linea para intentar centrarlo }
 Write('                         ');{ centrar}
 Textbackground(7);textcolor(3+blink);Writeln(' Automata Celular Alive ');normvideo;
 Write('                         ');
 Write('         ');Textbackground(7);textcolor(0);Writeln(titulo);normvideo;
 Writeln();
 Writeln();
 Write('                               ');write(1);
 Textbackground(7);textcolor(3);Writeln(op1);normvideo;Writeln();
 Write('                               ');write(2);
 Textbackground(7);textcolor(3);Writeln(op2);normvideo;Writeln();
 Write('                               ');write(3);
 Textbackground(7);textcolor(3);Writeln(op3);normvideo;Writeln();
 writeln();Write('                              ');Write(chr(175));
End;

Procedure validar(var Dato:integer;leer,escribir:boolean;name:string;LimSup,Liminf:integer);
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

procedure Saliendo(name:string;tiempo:integer);
begin
     textcolor(red);
     writeln(' Esta saliendo ',name);
     delay(tiempo);NormVideo;
end;

begin //programa principal
 presentacion;
 repeat
    menu(' MENU ','   Play   ',' Sentings ','   Exit   ');
    validar(OpM,true,false,' el dato',3,0);barra;
    case OpM of
    1:
      Begin
           repeat
                 menu(' play ','     Mostrar Caldo    ','  Editar Caldo  ','        Salir        ');
                 validar(OpSM,true,false,' el dato',3,0);barra;
                 case OpSM of
                 1:
                  begin
                    writeln(' ese es su caldo de cultivo');
                  end;
                 2:
                   Begin
                    repeat  
                        menu(' Editar Caldo ','   Avanzar Generacion   ',' Modificar Caldo ','          Salir        ');
                        validar(OpISM,true,false,' el dato',3,0);barra;
                        Case OpISM of
                         1:
                          repeat
                            menu(' Avanzar Generacion ','   mostrar generacion por generacion   ',' Mostrar Generacion N ','          Salir        ');
                            validar(opISM1,true,false,' el dato',3,0);barra;
                            Case opISM1 of
                             1:
                                writeln(' se avanzara mostrando cada generacion');
                             2:
                                writeln(' se avanzara hasat la generacion deseada');
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
                  menu(' Sentings ','   Ver Congifuracion   ',' Cambiar Configuracion ','          Salir        ');
                 validar(OpSM,true,false,' el dato',3,0);barra;
                 case OpSM of
                 1:
                   Begin
                        writeln(' La configuracion actual es:');
                   end;
                 2:
                   Begin
                        writeln(' aun no puede alterar la configuracion');
                        readln();
                   end;
                 3:
                   saliendo(' de la opcion Sentinggs',500);
                 end;
           until OpSM=3;
      end;
    3:
      saliendo('del programa principal',1000);
    end;
 until OpM=3;
end.
