program PorPoblacion;
 type
   Matriz= array [1..10,1..10] of integer;  
 var
	Caldo:matriz;
	poblacion,x,y,z: integer;
	
 Begin
    Read(poblacion);
	z:=0;
	//Inicializamos la matriz
	for x := 1 to 10 do
		for y := 1 to 10 do 
			Caldo[x,y]:=0;
	//Registramos las celulas
	while z<> poblacion do
		Begin
			Randomize;
			x:= random(11);
			Randomize; //Probablemente este demas
			y:= random(11);
			If Caldo[x,y]<>1 then
				begin
					Caldo[x,y]:=1;
					z:=z+1;
				end;
		End;
	//Imprime el caldo de cultivo
  for x := 1 to 10 do
    begin
      for y := 1 to 10 do 
        begin
          write('|');
          write(Caldo[x,y]);
        end;
      writeln('|');
    end;
    readln
  End.
