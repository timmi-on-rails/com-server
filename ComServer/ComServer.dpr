library ComServer;

uses
  ComServ,
  ComServer_TLB in 'ComServer_TLB.pas',
  Test in 'Test.pas' {Test: CoClass};

exports
  DllGetClassObject,
  DllCanUnloadNow,
  DllRegisterServer,
  DllUnregisterServer,
  DllInstall;

{$R *.TLB}

{$R *.RES}

begin
end.
