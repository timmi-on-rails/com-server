unit ComServer_TLB;

// ************************************************************************ //
// WARNING
// -------
// The types declared in this file were generated from data read from a
// Type Library. If this type library is explicitly or indirectly (via
// another type library referring to this type library) re-imported, or the
// 'Refresh' command of the Type Library Editor activated while editing the
// Type Library, the contents of this file will be regenerated and all
// manual modifications will be lost.
// ************************************************************************ //

// $Rev: 52393 $
// File generated on 30.01.2023 10:28:41 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Users\z003hvdw\SCM\COMDemo\ComServer\ComServer (1)
// LIBID: {92C99953-EA24-487D-A728-956B1338C264}
// LCID: 0
// Helpfile:
// HelpString:
// DepndLst:
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// SYS_KIND: SYS_WIN32
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers.
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, System.Classes, System.Variants, System.Win.StdVCL, Vcl.Graphics, Vcl.OleServer, Winapi.ActiveX;


// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:
//   Type Libraries     : LIBID_xxxx
//   CoClasses          : CLASS_xxxx
//   DISPInterfaces     : DIID_xxxx
//   Non-DISP interfaces: IID_xxxx
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  ComServerMajorVersion = 1;
  ComServerMinorVersion = 0;

  LIBID_ComServer: TGUID = '{92C99953-EA24-487D-A728-956B1338C264}';

  IID_ITest: TGUID = '{C293FB27-B8BF-451C-90DE-7CE3C138B0E7}';
  CLASS_Test: TGUID = '{B44B1D0D-6824-41E3-A185-A97AB53C59BA}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary
// *********************************************************************//
  ITest = interface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library
// (NOTE: Here we map each CoClass to its Default Interface)
// *********************************************************************//
  Test = ITest;


// *********************************************************************//
// Interface: ITest
// Flags:     (256) OleAutomation
// GUID:      {C293FB27-B8BF-451C-90DE-7CE3C138B0E7}
// *********************************************************************//
  ITest = interface(IUnknown)
    ['{C293FB27-B8BF-451C-90DE-7CE3C138B0E7}']
    function EchoInt(i: Integer): Integer; stdcall;
    function EchoDouble(d: Double): Double; stdcall;
    function EchoString(s: PWideChar): PWideChar; stdcall;
  end;

// *********************************************************************//
// The Class CoTest provides a Create and CreateRemote method to
// create instances of the default interface ITest exposed by
// the CoClass Test. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoTest = class
    class function Create: ITest;
    class function CreateRemote(const MachineName: string): ITest;
  end;

implementation

uses System.Win.ComObj;

class function CoTest.Create: ITest;
begin
  Result := CreateComObject(CLASS_Test) as ITest;
end;

class function CoTest.CreateRemote(const MachineName: string): ITest;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Test) as ITest;
end;

end.

