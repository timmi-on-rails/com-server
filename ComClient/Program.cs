using System;
using ComServer;

var test = new Test();

Console.WriteLine("[int] C# receives: " + test.EchoInt(1234));
Console.WriteLine("[double] C# receives: " + test.EchoDouble(1.234));
Console.WriteLine("[string] C# receives: " + test.EchoString("hello"));
Console.WriteLine("done");