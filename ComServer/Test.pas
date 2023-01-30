unit Test;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, ActiveX, Classes, ComObj, ComServer_TLB, StdVcl;

type
  TTest = class(TTypedComObject, ITest)
  protected
    function EchoDouble(d: Double): Double; safecall;
    function EchoInt(i: Integer): Integer; safecall;
    function EchoString(const s: WideString): WideString; safecall;
  end;

implementation

uses ComServ;

function TTest.EchoDouble(d: Double): Double;
begin
  writeln('[double] Delphi receives: ', d);
  Result := d;
end;

function TTest.EchoInt(i: Integer): Integer;
begin
  writeln('[int] Delphi receives: ', i);
  Result := i;
end;

function TTest.EchoString(const s: WideString): WideString;
begin
  writeln('[string] Delphi receives: ', s);
  Result := s;
end;

initialization
  TTypedComObjectFactory.Create(ComServer, TTest, Class_Test,
    ciMultiInstance, tmApartment);
end.
