unit setup4dlazdao.impl.param;

{$mode Delphi}

interface

uses
SysUtils;

type

{ TSetup4DLazDaoParam }

TSetup4DLazDaoParam = class
private
  FHostName: string;
  FPort: Integer;
  FUserName: string;
  FPassword: string;
  FDatabaseName: string;
public
  class function GetInstance: TSetup4DLazDaoParam;
  class procedure ReleaseInstance;

  property HostName     : string  read FHostName     write FHostName;
  property Port         : Integer read FPort         write FPort;
  property UserName     : string  read FUserName     write FUserName;
  property Password     : string  read FPassword     write FPassword;
  property DatabaseName : string  read FDatabaseName write FDatabaseName;
end;

implementation

{ TSetup4DLazDaoParam }

var
 FInstance: TSetup4DLazDaoParam;


class function TSetup4DLazDaoParam.GetInstance: TSetup4DLazDaoParam;
begin
if not Assigned(FInstance) then
  FInstance := TSetup4DLazDaoParam.Create;

Result := FInstance;
end;

class procedure TSetup4DLazDaoParam.ReleaseInstance;
begin
FreeAndNil(FInstance);
end;

end.



