unit Test;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, ActiveX, Classes, ComObj, ComServer_TLB, StdVcl;

type
  TTest = class(TTypedComObject, ITest)
  protected
    function EchoDouble(d: Double): Double; stdcall;
    function EchoInt(i: Integer): Integer; stdcall;
    function EchoString(s: PWideChar): PWideChar; stdcall;
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

function TTest.EchoString(s: PWideChar): PWideChar;
begin
  writeln('[string] Delphi receives: ', s);
  Result := s;
end;

initialization
  TTypedComObjectFactory.Create(ComServer, TTest, Class_Test,
    ciMultiInstance, tmApartment);
end.
