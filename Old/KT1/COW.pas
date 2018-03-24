var n, i, j: integer;
    s: longint;
    a: array[1..1000] of longint;
function getsum(indes, indes1:integer): longint;
var i: integer;
    sum: longint;
begin
  sum := 0;
  for i := 1 to n + 2 do
    begin
      if (i = indes) or (i = indes1) then continue;
      sum := sum + a[i];
    end;
  exit(sum);
end;
begin
  read(n, s);
  for i := 1 to n + 2 do readln(a[i]);
  for i := 1 to n + 2 do
    begin
      for j := i + 1 to n + 2 do
        if getsum(i, j) = s then break;
      if getsum(i, j) = s then break;
    end;
  for s := 1 to n + 2 do
    begin
      if (s = i) or (s = j) then continue;
      writeln(a[s]);
    end;
end.
