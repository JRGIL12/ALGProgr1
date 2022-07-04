program celda_8Vecinas;
 var
  i,j,x,Y:integer;

begin
  X:=5;
  Y:=6;
  //para la posicion 5,6 en la supuesta matriz

  for i:=-1 to 1 do
      for j:=-1 to 1 do
          if ( (i<>0) or (j<>0) ) then
             writeln('Posicion [',x+i,',',y+j,'] ');


  readln;
end.
