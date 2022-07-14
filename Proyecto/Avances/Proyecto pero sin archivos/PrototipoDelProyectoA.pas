Program ProyectoPrototipoA;
{
  ACA: juego de la vida
  Problemas: Ninguno por ahora
}
uses
 crt;
var
 o{Ôpciones Del menu}:integer;

Procedure Presentacion;  //40lines
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
 textbackground(white);textcolor(cyan+blink);writeln(' Automata Celular alive');NormVideo;writeln();
 //linea de descipcion
 textcolor(cyan);Writeln('////////////////////////////////////////////////////////////////////////////////');NormVideo;
 write('La evolucion de la vida tiene una variedad de patrones reconocidos que provienen');
 Write('de determinadas posiciones iniciales. La vida es un ejemplo de emergencia y auto-organizacion.');
 Write(' Los automatas celulares son automatas simples que producen una   salida a partir de varias ');
 Write('entradas, modificando en el proceso su estado segun   una funcion de transicin. ');
 Write('Por lo general, en un automata celular, al igual que  en la evolucion, el estado de ');
 Write('una celula en una generacion determinada depende  unica y exclusivamente de los estados ');
 writeln('de las celulas vecinas y de su propio     estado en la generacion anterior.');writeln();
 textcolor(cyan);Writeln('////////////////////////////////////////////////////////////////////////////////');NormVideo;
 // creditos
 write(' ');textbackground(Lightcyan);textcolor(black);writeln(' Jesus ');NormVideo;
 writeln();textcolor(cyan);write(Chr(175));NormVideo;
 Readln;clrscr;
End;

function Menu:integer;  //20 lines
var selecion:integer;
Begin
 writeln();writeln();writeln();writeln();writeln();{5 saltos de linea para intentar centrarlo }
 Write('                         ');{ centrar}
 Textbackground(7);textcolor(3+blink);Writeln(' Automata Celular Alive ');normvideo;
 Write('                         ');
 Write('         ');Textbackground(7);textcolor(0);Writeln(' MENU ');normvideo;
 Writeln();
 Writeln();
 Write('                               ');write(1);
 Textbackground(7);textcolor(3);Writeln('   Play   ');normvideo;Writeln();
 Write('                               ');write(2);
 Textbackground(7);textcolor(3);Writeln(' Sentings ');normvideo;Writeln();
 Write('                               ');write(3);
 Textbackground(7);textcolor(3);Writeln('   Exit   ');normvideo;Writeln();
 textcolor(3);writeln();Write('                              ');Write(chr(175));normvideo;
 Readln(selecion);
 menu:=selecion;
 clrscr;
End;

Begin// este es un propotipo del proyecto
 Presentacion;
 repeat
  o:=Menu;
 until o=3;
End.
