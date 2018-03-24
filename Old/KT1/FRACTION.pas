var a, b, m, n: longint;
    count: integer;
begin
  count := 0;
  read(b, n);
  for a := 0 to b do
    for m := 1 to n * 2 do
      if (m - n <> 0) and ((a / m - b / n) = ((a - b) / (m - n))) then
      count := count + 1;
  write(count);
end.
