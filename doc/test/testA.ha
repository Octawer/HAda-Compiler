procedure testA() is 

-- constantes y variables globales
A: constant := 1;

d: Integer;
e: Integer;
f: Integer;

function resta (a : out Integer; b: out Integer) return Integer is

begin

  return a-b;	

end resta;

-- procedimiento principal

begin

  e := A;
  f := 4;
  d := resta (f,e);
  Put_line("resultado:");
  Put_line(d);   -- Debe mostar un 3 

end testA;




