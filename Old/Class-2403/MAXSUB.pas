var i, j, n, max: longint;
    min, a: array[1..100000] of longint;
begin
  read(n);
  read(a[1]);
  min[1] := a[1];
  for i := 2 to n do
    begin
      read(a[i]);
      if min[i - 1] > a[i] then min[i] := a[i]
      else min[i] := min[i - 1];
      if a[i] - min[i - 1] > max then max := a[i] - min[i - 1];
    end;
  write(max);
end.
