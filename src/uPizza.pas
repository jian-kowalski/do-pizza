unit uPizza;

interface

type
  TPizza = class
  private
    FSabor: String;
    FTamanho: Integer;
    FBorda: Boolean;
    function GetSabor: String;
    procedure SetSabor(const Value: String);
    function GetBorda: Boolean;
    function GetTamanho: Integer;
    procedure SetBorda(const Value: Boolean);
    procedure SetTamanho(const Value: Integer);
  public
    property Sabor: String read GetSabor write SetSabor;
    property Tamanho: Integer read GetTamanho write SetTamanho;
    property Borda: Boolean read GetBorda write SetBorda;
    function ToString: string; override;
  end;

implementation

uses
  System.SysUtils;

{ TPizza }

function TPizza.GetBorda: Boolean;
begin
  Result := FBorda;
end;

function TPizza.GetSabor: String;
begin
  Result := FSabor;
end;

function TPizza.GetTamanho: Integer;
begin
  Result := FTamanho;
end;

procedure TPizza.SetBorda(const Value: Boolean);
begin
  FBorda := Value;
end;

procedure TPizza.SetSabor(const Value: String);
begin
  FSabor := Value;
end;

procedure TPizza.SetTamanho(const Value: Integer);
begin
  FTamanho := Value;
end;

function TPizza.ToString: string;
begin
  Result := sLineBreak +'*******************Sua Pizza******************* ' + sLineBreak +
            'Sabor: ' + FSabor + sLineBreak +
            'Tamanho: ' + FTamanho.ToString +' CM'+ sLineBreak;
  if FBorda then
    Result := Result + 'Borda: Sim' +  sLineBreak
  else
    Result := Result + 'Borda: Não' +  sLineBreak
end;

end.
