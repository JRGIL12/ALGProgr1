Program Prueba_de_colores;
{Una prueba de colores para el menu}
uses
 crt;

var
 j,i:integer;

Begin
 writeln('          ');
 writeln('          ');
 writeln('          ');
 for i:=1 to 9 do
  for j:=1 to 9 do
   begin
    textbackground(i);writeln(i,' fondo      ');
    textcolor(j);writeln(i,j,' fondo+texto         ');
    textcolor(j+blink);writeln(i,j,' fondo+texto+blink   ');
    normvideo;
    Writeln(' ');
    delay(100);
   end;
 Readln;
End.
