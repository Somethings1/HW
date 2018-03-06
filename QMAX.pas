var a, res: array[1..1000] of longint;
    n, m, l, r, val, i, max, count: longint;
    status: byte;
begin
  count := 0;
  read(n);
  for i := 1 to n do
    read(a[i]);
  read(m);
  for i := 1 to m do
    begin
      read(status, l, r);
      if status = 0 then
        begin
          read(val);
          for l := l to r do a[l] := a[l] + val;
          continue;
        end;
      max := a[l];
      for l := l to r do
        if a[l] > max then max := a[l];
      count := count + 1;
      res[count] := max;
    end;
  if count > 0 then
    for i := 1 to count do
      writeln(res[i]);
end.