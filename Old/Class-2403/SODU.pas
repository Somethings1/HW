var tich: int64;
    a, b, c, i: longint;
begin
  tich := 1;
  read(a, b, c);
  for i := a to b do
      tich := (tich * (i mod c)) mod c;
  writeln(tich);
end.
