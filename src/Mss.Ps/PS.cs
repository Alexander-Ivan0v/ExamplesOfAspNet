using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Management.Automation;
using System.Management.Automation.Runspaces;
using System.IO;
using System.Collections.ObjectModel;
using Mss.Common;

namespace Mss.Ps
{
    public static class PS
    {
        /*
        public class PsResult
        {
            public static PSDataCollection<ErrorRecord> Error;
            public static Collection<PSObject> Result;
        }
        */

        static PowerShell _powerShell;

        public static PSObject ExecutePS(this string script)
        {
            PSObject res = new PSObject();
            Collection<PSObject> results = null;

            powerShell.AddScript(script);

            try
            {
                results = powerShell.Invoke();
                if (powerShell.Streams.Error.Count > 0)
                {
                    foreach(ErrorRecord err in powerShell.Streams.Error) {
                        // ...
                    }                    
                    powerShell.Streams.Error.Clear();
                }
                else
                {
                    res.Members.Add(new System.Management.Automation.PSNoteProperty(Constants.PSRetErrorNames.Code, Constants.PSReturnCodes.ok));
                    res.Members.Add(new System.Management.Automation.PSNoteProperty(Constants.PSRetErrorNames.Description, "OK"));
                }
            }
            catch (System.Exception ex)
            {
                res.Members.Add(new System.Management.Automation.PSNoteProperty(Constants.PSRetErrorNames.Code, Constants.PSReturnCodes.exception));
                res.Members.Add(new System.Management.Automation.PSNoteProperty(Constants.PSRetErrorNames.Description, "[PS]: " + ex.ToString()));
            }

            powerShell.Commands.Clear();

            // --- Preparing result ---
            PSObject total = new PSObject();
            total.Members.Add(new System.Management.Automation.PSNoteProperty(Constants.PSRetObjNames.Error, res));
            total.Members.Add(new System.Management.Automation.PSNoteProperty(Constants.PSRetObjNames.Result, results));
            // ------------------------
            return total;
        }

        static PowerShell powerShell
        {
            get
            {
                if (_powerShell == null)
                {
                    _powerShell = PowerShell.Create();
                    powerShell.Runspace = PSConfig.GetPSConfig;
                    if (!string.IsNullOrEmpty(PSConfig.Profile) && File.Exists(PSConfig.Profile))
                    {
                        // ...
                    }
                }
                return _powerShell;
            }
        }
    }
}