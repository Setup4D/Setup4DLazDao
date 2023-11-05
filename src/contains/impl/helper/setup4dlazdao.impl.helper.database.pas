unit setup4dlazdao.impl.helper.database;

{$mode Delphi}

interface

//uses
//  SysUtils, Classes, DB, ZAbstractConnection, ZAbstractRODataset, ZAbstractDataset,
//  ZDataset, TypInfo, Generics.Collections, Rtti;
//
//type
//  TEntityDatabaseHelper<T: class, constructor> = class
//  public
//    class function Select(const Query: TZQuery; const TableName: string; const WhereClauses: TStringList = nil): TDataSet; static;
//    class procedure Insert(const Query: TZQuery; const TableName: string; const Obj: T); static;
//    class procedure Update(const Query: TZQuery; const TableName: string; const Obj: T; const WhereClauses: TStringList = nil); static;
//    class procedure Delete(const Query: TZQuery; const TableName: string; const WhereClauses: TStringList = nil); static;
//  end;
//

implementation

//class function TEntityDatabaseHelper<T>.Select(const Query: TZQuery; const TableName: string; const WhereClauses: TStringList = nil): TDataSet;
//var
//  Context: TRttiContext;
//  RttiType: TRttiType;
//  Field: TRttiField;
//  FieldName: string;
//  Fields: TStringList;
//begin
//  Context := TRttiContext.Create;
//  RttiType := Context.GetType(T);
//  Fields := TStringList.Create;
//
//  Query.SQL.Text := 'SELECT ';
//
//  for Field in RttiType.GetFields do
//  begin
//    FieldName := Field.Name;
//    Fields.Add(FieldName);
//  end;
//
//  Query.SQL.Add(Fields.CommaText);
//  Query.SQL.Add('FROM ' + TableName);
//
//  if Assigned(WhereClauses) and (WhereClauses.Count > 0) then
//    Query.SQL.Add('WHERE ' + WhereClauses.CommaText);
//
//  Query.Open;
//  Result := Query;
//end;
//
//class procedure TEntityDatabaseHelper<T>.Insert(const Query: TZQuery; const TableName: string; const Obj: T);
//var
//  Context: TRttiContext;
//  RttiType: TRttiType;
//  Field: TRttiField;
//  FieldName: string;
//  FieldValue: TValue;
//  Fields: TStringList;
//  Values: TStringList;
//begin
//  Context := TRttiContext.Create;
//  RttiType := Context.GetType(T);
//  Fields := TStringList.Create;
//  Values := TStringList.Create;
//
//  for Field in RttiType.GetFields do
//  begin
//    FieldName := Field.Name;
//    FieldValue := Field.GetValue(Obj);
//    Fields.Add(FieldName);
//    Values.Add(QuotedStr(FieldValue.ToString));
//  end;
//
//  Query.SQL.Text := 'INSERT INTO ' + TableName + ' (' + Fields.CommaText + ')';
//  Query.SQL.Add('VALUES (' + Values.CommaText + ')');
//  Query.ExecSQL;
//end;
//
//class procedure TEntityDatabaseHelper<T>.Update(const Query: TZQuery; const TableName: string; const Obj: T; const WhereClauses: TStringList = nil);
//var
//  Context: TRttiContext;
//  RttiType: TRttiType;
//  Field: TRttiField;
//  FieldName: string;
//  FieldValue: TValue;
//  SetClause: TStringList;
//begin
//  Context := TRttiContext.Create;
//  RttiType := Context.GetType(T);
//  SetClause := TStringList.Create;
//
//  for Field in RttiType.GetFields do
//  begin
//    FieldName := Field.Name;
//    FieldValue := Field.GetValue(Obj);
//    SetClause.Add(FieldName + ' = ' + QuotedStr(FieldValue.ToString));
//  end;
//
//  Query.SQL.Text := 'UPDATE ' + TableName;
//  Query.SQL.Add('SET ' + SetClause.CommaText);
//
//  if Assigned(WhereClauses) and (WhereClauses.Count > 0) then
//    Query.SQL.Add('WHERE ' + WhereClauses.CommaText);
//
//  Query.ExecSQL;
//end;
//
//class procedure TEntityDatabaseHelper<T>.Delete(const Query: TZQuery; const TableName: string; const WhereClauses: TStringList = nil);
//begin
//  Query.SQL.Text := 'DELETE FROM ' + TableName;
//
//  if Assigned(WhereClauses) and (WhereClauses.Count > 0) then
//    Query.SQL.Add('WHERE ' + WhereClauses.CommaText);
//
//  Query.ExecSQL;
//end;

end.


