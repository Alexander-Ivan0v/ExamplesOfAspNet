using System.Collections.ObjectModel;
using System.Management.Automation;

namespace Mss.Ps
{
    public interface IPowershell
    {
        object GetVariable(string Name);
        void SetVariable(string name, object value);
        PSObject Execute(string script);
    }
}
