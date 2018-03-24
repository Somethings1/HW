var a: longint;
    n: integer;
begin
  read(a);
  n := a div 11000;
  a := a - n * 11000;
  write(a div 1000, ' ', n);
end.