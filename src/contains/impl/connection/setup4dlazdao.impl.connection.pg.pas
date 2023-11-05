unit setup4dlazdao.impl.connection.pg;

{$mode Delphi}

interface

uses
  setup4dlazdao.impl.param,
  setup4dlazdao.interf,
  ZConnection,
  ZDataSet,
  Classes,
  SysUtils;

type

  { TSetup4DLazDaoConnectionMySQL }

  TSetup4DLazDaoConnectionMySQL = class(TInterfacedObject, IConnection)
  private
    FConnection: TZConnection;
    procedure OnBelforeConnect(Sender: TObject);
  protected
    function GetConnection: TZConnection;
    function GetQuery: TZQuery;
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IConnection;
  end;

implementation

{ TSetup4DLazDaoConnectionMySQL }

procedure TSetup4DLazDaoConnectionMySQL.OnBelforeConnect(Sender: TObject);
begin
  FConnection.Protocol    := 'postgresql';
  FConnection.LoginPrompt := False;
  FConnection.HostName    := TSetup4DLazDaoParam.GetInstance.HostName;
  FConnection.Port        := TSetup4DLazDaoParam.GetInstance.Port;
  FConnection.Database    := TSetup4DLazDaoParam.GetInstance.DatabaseName;
  FConnection.User        := TSetup4DLazDaoParam.GetInstance.UserName;
  FConnection.Password    := TSetup4DLazDaoParam.GetInstance.Password;
end;

function TSetup4DLazDaoConnectionMySQL.GetConnection: TZConnection;
begin
  Result := FConnection;
end;

function TSetup4DLazDaoConnectionMySQL.GetQuery: TZQuery;
begin
  Result := TZQuery.Create(nil);
  Result.Connection := FConnection;
  Result.Close;
  Result.SQL.Clear;
end;

constructor TSetup4DLazDaoConnectionMySQL.Create;
begin
  FConnection := TZConnection.Create(nil);
  FConnection.BeforeConnect := OnBelforeConnect;
end;

destructor TSetup4DLazDaoConnectionMySQL.Destroy;
begin
  FConnection.Connected := False;
  FreeAndNil(FConnection);

  inherited Destroy;
end;

class function TSetup4DLazDaoConnectionMySQL.New: IConnection;
begin
  Result := Self.Create;
end;

end.
