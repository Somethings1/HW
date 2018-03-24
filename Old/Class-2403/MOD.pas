var i, count: integer;
    a: array[1..10] of integer;
    ts: array[0..41] of integer;

begin
  count := 0;
  for i := 1 to 10 do
    begin
      read(a[i]);
      a[i] := a[i] mod 42;
    end;
  for i := 1 to 10 do inc(ts[a[i]]);
  for i := 0 to 41 do
    if ts[i] > 0 then inc(count);
  write(count);
end.
