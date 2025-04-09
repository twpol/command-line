using System.Runtime.InteropServices;

[DllImport("kernel32.dll", CharSet = CharSet.Auto)]
static extern System.IntPtr GetCommandLine();

var realCommandLine = Marshal.PtrToStringAuto(GetCommandLine());
Console.WriteLine($"Windows command line: {realCommandLine}");
Console.WriteLine($"   .NET command line: {Environment.CommandLine}");
foreach (var arg in Environment.GetCommandLineArgs())
{
    Console.WriteLine($"            Argument: {arg}");
}
