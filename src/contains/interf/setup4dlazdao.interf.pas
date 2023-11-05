unit setup4dlazdao.interf;

{$mode Delphi}

interface
uses
  ZConnection,
  ZDataSet;

type
  IConnection                    =  interface
    /// <summary>
    /// Obtém uma instância de conexão de banco de dados.
    /// </summary>
    /// <returns>
    ///   Retorna uma instância de conexão de banco de dados.
    /// </returns>
    /// <remarks>
    ///   Esta função retorna uma instância de conexão de banco de dados,
    ///   que pode ser do tipo TZConnection (Free Pascal) ou TFDConnection (Delphi).
    ///   A implementação utilizada depende do compilador em uso.
    /// </remarks>
    function GetConnection: TZConnection;
    /// <summary>
    /// Obtém uma instância de uma Query.
    /// </summary>
    /// <returns>
    ///   Retorna uma instância de uma Query.
    /// </returns>
    /// <remarks>
    ///   Esta função retorna uma instância de uma Query,
    ///   que pode ser do tipo TZQuery (Free Pascal) ou TFDQuery (Delphi).
    ///   A implementação utilizada depende do compilador em uso.
    /// </remarks>
    function GetQuery: TZQuery;
  end;

implementation

end.


