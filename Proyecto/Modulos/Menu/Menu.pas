Program Menu;
{}
uses
 crt;


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
 writeln();Write('                              ');Write(chr(175));
 Readln;
End.
