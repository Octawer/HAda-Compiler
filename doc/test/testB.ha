procedure testB() is 

-- constantes y variables globales
A: constant := 1;

d: Integer;
e: Integer;
f: Integer;

function suma (a : Integer; b: Integer) return Integer is

begin

  return a+b;	

end suma;

-- procedimiento principal

begin

  e := A;
  f := 4;
  d := suma (f,e);
  Put_line("resultado:");
  Put_line(d);   -- Debe mostar un 5 

end testB;










}