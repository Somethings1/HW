var i, j, n: longint;
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
  for i := 3 to trunc(sqrt(n)) do
    begin
      j := 4 + i * i;
      if isPrime(i) and isPrime(j) then
        begin
          writeln(2, ' ', i, ' ', j);
          check := true;
        end;
    end;
  if not check then write(-1);
end.
