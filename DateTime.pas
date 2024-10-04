begin
  var a := ReadInteger('Введите год: ');
  Assert(a>0);
  var flag := False;
  if ((a mod 4 = 0) and (a mod 100 <> 0)) or (a mod 400 = 0) then
    flag := True;
  Print($'Год високосный: {flag}');
  
  
  var (day1, mounth1) := ReadInteger2('Введите первую дату: (День, месяц)');
  var (day2, mounth2) := ReadInteger2('Введите вторую дату: (День, месяц)');
  Assert((day1 in 1..31) and (day2 in 1..31) and (mounth1 in 1..12) and (mounth2 in 1..12));
  if mounth1>mounth2 then
    Print('Дата 1 ближе к новому году')
  else
    if mounth1 <> mounth2 then
      Print('Дата 2 ближе к новому году')
    else
      if day1 > day2 then
        Print('Дата 1 ближе к новому году')
      else
        if day1 <> day2 then
          Print('Дата 2 ближе к новому году')
        else
          Print('Даты одинаковы')
        
  if flag = True then
    Print('Кол-во дней: 366')
  else
    Print('Кол-во дней: 365')
end.