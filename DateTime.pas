begin
  var a := ReadInteger('Введите год: ');
  Assert(a>0);
  var flag := False;
  if ((a mod 4 = 0) and (a mod 100 <> 0)) or (a mod 400 = 0) then
    flag := True;
  Print($'Год високосный: {flag}')
end.