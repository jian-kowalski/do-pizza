program Pizza;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  uPizza in 'src\uPizza.pas';

var
  oPizza: TPizza;
  vEntrada: String;
begin
  try

    repeat
      oPizza := TPizza.Create;
      try
        Write('Informe o sabor da sua pizza: ');

        ReadLn(vEntrada);
        oPizza.Sabor := vEntrada;

        Write('Informe o tamanho em CM da sua pizza: ');

        ReadLn(vEntrada);
        oPizza.Tamanho := StrToIntDef(vEntrada, 0);

        Write('Deseja com borda? (0- Não 1 - Sim) ');

        ReadLn(vEntrada);
        oPizza.borda := Boolean(StrToIntDef(vEntrada, 0));

         Write(oPizza.ToString);
      finally
       oPizza.Free;
      end;

      Write('Deseja Sair? (0- Não 1 - Sim) ');
      ReadLn(vEntrada);
    until Boolean(StrToIntDef(vEntrada, 0)); //Enquanto a entrada não for um valor numérico

    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
