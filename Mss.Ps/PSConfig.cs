using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Management.Automation;
using System.Management.Automation.Runspaces;

namespace Mss.Ps
{
    public class PSConfig
    {
        private static string _profile;
        private static Runspace _rs;

        public static Runspace GetPSConfig { get { return rs; } }

        public static string Profile
        {
            get
            {
                return _profile;
            }
            set
            {
                _profile =  value;
                AddVariable( "Profile", _profile );
                PS.ExecutePS(_profile);
            }
        }

        public static Runspace rs
        {
            get
            {
                if (_rs == null)
                {
                    _rs = RunspaceFactory.CreateRunspace();
                    _rs.ThreadOptions = PSThreadOptions.Default;
                    _rs.Open();

                    return _rs;
                }
                return _rs;
            }
        }

        public static void AddVariable(string name, object value)
        {
            rs.SessionStateProxy.SetVariable(name, value);
        }
    }
}