Program Presentacion;
 {Intento de presentacion 1}
Uses
 crt;


Begin
 //Linea 0
 writeln('');
 //Linea 1
 write('  ');textbackground(red);write('  ');NormVideo;write(' ');
 write('  ');textbackground(red);write('   ');NormVideo;write(' ');
 write(' ');textbackground(red);write('  ');NormVideo;writeln(' ');
 //Linea 2
 write(' ');textbackground(red);write(' ');NormVideo;;write('  ');textbackground(red);write(' ');NormVideo;
 write(' ');textbackground(red);write(' ');NormVideo;write('   ');
 write(' ');textbackground(red);write(' ');NormVideo;write('  ');textbackground(red);writeln(' ');NormVideo;
 //Linea 3
 write(' ');textbackground(red);write('    ');NormVideo;
 write(' ');textbackground(red);write(' ');NormVideo;write('   ');
 write(' ');textbackground(red);writeln('    ');NormVideo;
 //Linea4
 write(' ');textbackground(red);write(' ');NormVideo;write('  ');textbackground(red);write(' ');NormVideo;
 write(' ');textbackground(red);write(' ');NormVideo;write('   ');
  write(' ');textbackground(red);write(' ');NormVideo;write('  ');textbackground(red);writeln(' ');NormVideo;
 //Linea 5
 write(' ');textbackground(red);write(' ');NormVideo;write('  ');textbackground(red);write(' ');NormVideo;
 write('  ');textbackground(red);write('   ');NormVideo;write(' ');
 textbackground(red);write(' ');NormVideo;write('  ');textbackground(red);write(' ');NormVideo;write(' ');
 //Continuacion de la linea 5
 textbackground(white);textcolor(red);writeln(' Automata Celular alive');NormVideo;
 //linea 6-7
 writeln();
 textcolor(red);Writeln('////////////////////////////////////////////////////////////////////////////////');NormVideo;
 //Linea 8: descripcion
 write('La evolucion de la vida tiene una variedad de patrones reconocidos que provienen');
 Write('de determinadas posiciones iniciales. La vida es un ejemplo de emergencia y auto-organizacion.');
 Write(' Los automatas celulares son automatas simples que producen una   salida a partir de varias ');
 Write('entradas, modificando en el proceso su estado segun   una funcion de transicin. ');
 Write('Por lo general, en un automata celular, al igual que  en la evolucion, el estado de ');
 Write('una celula en una generacion determinada depende  unica y exclusivamente de los estados ');
 writeln('de las celulas vecinas y de su propio     estado en la generacion anterior.');
 writeln();
 // linea
 textcolor(red);Writeln('////////////////////////////////////////////////////////////////////////////////');NormVideo;

 Readln;
End.
