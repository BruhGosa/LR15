const
  Cap = [1..9];

var
  f: text;
  s: string;
  kol, si,ci, n: integer;
  ch: char;
  sim, chi: array[1..100000] of integer;

begin
  Assign(f, 'ZAD05.txt');
  reset(f);
  while not eof(f) do
  begin
    readln(f, s);
    kol := kol + 1;
  end;
  
  reset(f);
  while not eof(f) do
  begin
    var i:integer;
    i:=i+1;
    si:=0;
    while not eoln(f) do
    begin
      read(f, ch);
      si := si + 1;
    end;
    sim[i]:=si;
    readln(f);
  end;
  
  reset(f);
  while not eof(f) do
  begin
    var i:integer;
    i:=i+1;
    ci:=0;
    while not eoln(f) do
    begin
      read(f, ch);
      if ch in Cap then
        ci:=ci+1;
    end;
    chi[i]:=ci;
    readln(f);
  end;
  
  Close(f);
  Append(f);
  writeln(f, '');
  writeln(f, 'Количество строк в файле = ', kol);
  for var i:=1 to kol do
  begin
    writeln(f, 'Количество символов в ',i,' строке = ',sim[i]);
  end;
  writeln(f,'');
  for var i:=1 to kol do
  begin
    writeln(f, 'Количество чисел в ',i,' строке = ',сhi[i]);
  end;
  close(f);
end.