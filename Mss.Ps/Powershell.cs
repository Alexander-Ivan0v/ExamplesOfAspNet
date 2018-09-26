using System.Collections.ObjectModel;
using System.Management.Automation;

namespace Mss.Ps
{
    public class Powershell : IPowershell
    {
        // --------- Pulished variables for PowerShell -------------
        string _testVar = "Big Ass";
        public string TestVar { get { return _testVar; } set { _testVar = value; PSConfig.AddVariable("TestVar", TestVar); } }
        // ---------------------------------------------------------

        public Powershell()
        {
            _testVar = "Test";
        }

        public object GetVariable(string name)
        {
            return PSConfig.rs.SessionStateProxy.PSVariable.GetValue(name);
        }

        public void SetVariable(string name, object value)
        {
            PSConfig.AddVariable(name, value);
        }

        public PSObject Execute(string script)
        {
            return PS.ExecutePS(script);            
        }
    }
}
