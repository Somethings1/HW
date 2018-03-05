var i, j, k, n: longint;
    check: boolean;
function isPrime(a: longint): boolean;
var i: integer;
begin
  if a < 2 then exit(false);
  for i := 2 to trunc(sqrt(a)) do
    if a mod i = 0 then exit(false);
  exit(true);
end;
begin
  check := false;
  read(n);
  for i := 1 to n do
    for j := i + 1 to n do
      for k := j + 1 to n do
        if (i * i + j * j = k) and
            isPrime(i) and
            isPrime(j) and
            isPrime(k) then
          begin
            check := true;
            writeln(i, ' ', j, ' ', k);
          end;
  if not check then write(-1);
end.