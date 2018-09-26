namespace Mss.Common
{
    public static class Constants
    {
        public static class MediaTypeNames
        {
            public const string ApplicationXml = "application/xml";
            public const string TextXml = "text/xml";
            public const string ApplicationJson = "application/json";
            public const string TextJson = "text/json";
        }
        public static class Paging
        {
            public const int MinPageSize = 1;
            public const int MinPageNumber = 1;
            public const int DefaultPageNumber = 1;
        }

        public static class CommonParameterNames
        {
            public const string PageNumber = "pageNumber";
            public const string PageSize = "pageSize";
        }

        public static class CommonLinkRelValues
        {
            public const string Self = "self";
            public const string All = "all";
            public const string CurrentPage = "currentPage";
            public const string PreviousPage = "previousPage";
            public const string NextPage = "nextPage";
        }

        public static class CommonRoutingDefinitions
        {
            public const string ApiSegmentName = "api";
            public const string ApiVersionSegmentName = "apiVersion";
            public const string CurrentApiVersion = "v1";
        }

        public static class CommonControllerDefinitions
        {
            public const string Cfg = "cfg";
            public const string Usr = "user";
            public const string Tnt = "tenant";
            public const string Team = "team";
            public const string Run = "run";
        }

        public static class SchemeTypes
        {
            public const string Basic = "basic";
        }

        public static class RoleNames
        {
            public const string Member = "Member";
            public const string MssDeveloper = "MSSDeveloper";
            public const string MssScripter = "MSSScripter";
            public const string MssAdministrator = "MSSAdministrator";
            public const string Developer = "Developer";
            public const string Scripter = "Scripter";
            public const string Administrator = "Administrator";
            public const string SelfService = "SelfService";
            public const string ScriptRunner = "ScriptRunner";
        }

        public static class MainTenant
        {
            public const string Name = "MSS Main";
        }

        public static class EditstateNames
        {
            public const string Created = "Created";
            public const string Modified = "Modified";
            public const string Deleted = "Deleted";
        }

        public const string DefaultLegacyNamespace = "http://mss.icl/";

        public static class ChgStateGrpNames
        {
            public const string User = "User";
            public const string Team = "Team";
            public const string Tenant = "Tenant";
            public const string TenantCfg = "Tenant Cfg";
            public const string RunTask = "Run Task";
            public const string RunFlow = "Run Flow";
        }

        public static class ChgStateNames
        {
            public const string Create = "Create";
            public const string Edit = "Edit";
            public const string Update = "Update";
            public const string Delete = "Delete";
            public const string CreateRunObject = "Create Run Object";
            public const string CheckRunParams = "Check Run Params";
            public const string FillRunParams = "Fill In Run Params";
            public const string PrepareForRun = "Preparation for Run";
            public const string Run = "Run";
            public const string CheckReturnedParams = "Check Returned Params";
            public const string StoreReturnedParams = "Store Returned Params";
            public const string RunSuccess = "Ran succeed";
            public const string RunWithError = "Ran with Error";
            public const string RunWithException = "It was Exception during doing Run";
            public const string PSReturnCode = "PS Return Code";
            public const string PSReturnMsg = "PS Return Msg";
        }

        public static class SpecialSegments
        {
            public const string Tnt = "tenant";
            public const string Common = "common";
            public const string Task = "task";
            public const string Flow = "flow";
            public const string Run = "run";
        }

        public static class PSReturnCodes
        {
            public const int ok = 0;
            public const int error = -1;
            public const int exception = -2;
            public const int longrunning = -99;
            public const int fatal = -100;
            public const int prepared = -999;
            public const int notrunned = -1000;
        }

        public static class PSRetObjNames
        {
            public const string Error = "Error";
            public const string Result = "Result";
        }

        public static class PSRetErrorNames
        {
            public const string Code = "ErrorCode";
            public const string Description = "ErrorDescription";
        }

        public static class RunScriptNames
        {
            public const string RunScriptResult = "ReturnedResult";
            public const string RunScriptResultMessage = "ReturnedMessage";
            public const string RunScriptData = "ReturnedData";
        }

        public static class Messages
        {
            public const string NoneFound = "<internal none found>";
        }

        public static class ParType
        {
            public const string ParTypeInt = "int";
            public const string ParTypeStr = "str";
            public const string ParTypeNum = "num";
            public const string ParTypeMoney = "money";
            public const string ParTypeDate = "date";
            public const string ParTypeTime = "time";
            public const string ParTypeDateTime = "datetime";
            public const string ParTypeSpecial = "special";
            public const string ParTypeGuid = "guid";
            public const string ParTypeTable = "table";
            public const string ParTypeGraph = "graph";
        }

        public static class ParView
        {
            public const string ParViewText = "text";
            public const string ParViewMultiline = "multiline";
            public const string ParViewSpinner = "spinner";
            public const string ParViewDate = "date";
            public const string ParViewTime = "time";
            public const string ParViewDateTime = "datetime";
            public const string ParViewCheckbox = "checkbox";
            public const string ParViewSlider = "slider";
            public const string ParViewDropdown = "dropdown";
            public const string ParViewList = "list";
            public const string ParViewCheck = "check";
            public const string ParViewSelectmenu = "selectmenu";
            public const string ParViewRadio = "radio";
            public const string ParViewSimpletable = "simpletable";
            public const string ParViewChart = "chart";
        }

        public static class ParViewOption
        {
            public const string ParViewOptionMultiselect = "multiselect";
            public const string ParViewOptionAutocomplete = "autocomplete";
            public const string ParViewOptionDefaultvalue = "defaultvalue";
            public const string ParViewOptionFillusing = "fillusing";
            public const string ParViewOptionPassword = "password";
            public const string ParViewOptionHeader = "simpletableheader";
            public const string ParViewOptionJsInit = "js:init";
            public const string ParViewOptionJsWork = "js:work";
            public const string ParViewOptionJsSpecial = "js:special";
            public const string ParViewOptionJsFields = "js:fields";
        }

    }
}