program PorPoblacion;
 type
   Matriz= array [1..10,1..10] of integer;  
 var
	Caldo:matriz;
	poblacion,x,y,z: integer;
	
 Begin
	Repeat
	 Read(poblacion);
	until ( (poblacion>10) and (Poblacion<100) );
	z:=0;//Puedes inicializar la matriz por si acaso
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
		End; readln();
  End.
