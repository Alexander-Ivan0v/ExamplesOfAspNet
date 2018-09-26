use MssDb

-- Definitions
declare @Create varchar(50);
set @Create = 'Create';
declare @Edit varchar(50);
set @Edit = 'Edit';
declare @Delete varchar(50);
set @Delete = 'Delete';
declare @Update varchar(50);
set @Update = 'Update';
-- ChgStates for Run
declare @CreateRunObject varchar(50);
set @CreateRunObject = 'Create Run Object';
declare @CheckRunParam varchar(50);
set @CheckRunParam = 'Check Run Params';
declare @FillInRunParam varchar(50);
set @FillInRunParam = 'Fill In Run Params';
declare @PrepareForRun varchar(50);
set @PrepareForRun = 'Preparation for Run';
declare @Run varchar(50);
set @Run = 'Run';
declare @CheckReturnedRun varchar(50);
set @CheckReturnedRun = 'Check Returned Params';
declare @StoreReturnedRun varchar(50);
set @StoreReturnedRun = 'Store Returned Params';
declare @RunSuccess varchar(50);
set @RunSuccess = 'Ran succeed';
declare @RunWithError varchar(50);
set @RunWithError = 'Ran with Error';
declare @RunWithException varchar(50);
set @RunWithException = 'It was Exception during doing Run';
declare @PSRetCode varchar(50);
set @PSRetCode = 'PS Return Code';
declare @PSRetMsg varchar(50);
set @PSRetMsg = 'PS Return Msg';


declare @User varchar(20);
set @User = 'User';
declare @Role varchar(20);
set @Role = 'Role';
declare @Team varchar(20);
set @Team = 'Team';
declare @Tenant varchar(20);
set @Tenant = 'Tenant';
declare @Cfg varchar(20);
set @Cfg = 'Tenant Cfg';
declare @RunTask varchar(20);
set @RunTask = 'Run Task';
declare @RunFlow varchar(20);
set @RunFlow = 'Run Flow';

declare @Debug varchar(20);
set @Debug = 'Debug';
declare @Info varchar(20);
set @Info = 'Info';
declare @Warning varchar(20);
set @Warning = 'Warning';
declare @Error varchar(20);
set @Error = 'Error';
declare @Fatal varchar(20);
set @Fatal = 'Fatal';

declare @Special varchar(20);
set @Special = 'Special';

declare @team1 varchar(50);
set @team1 = 'App Admins';
declare @team2 varchar(50);
set @team2 = 'Tenant Admins';
declare @team3 varchar(50);
set @team3 = 'Developers';
declare @team4 varchar(50);
set @team4 = 'Scripters';
declare @team5 varchar(50);
set @team5 = 'User Admins';
declare @team6 varchar(50);
set @team6 = 'Task Admins';
declare @team7 varchar(50);
set @team7 = 'Flow Admins';
declare @team8 varchar(50);
set @team8 = 'Tenants';
declare @team9 varchar(50);
set @team9 = 'App Support';

declare @deflogin1 varchar(25);
set @deflogin1 = 'mss_alex'
declare @defemail1 varchar(50)
set @defemail1 = 'temp.account@mail.ru'
declare @defname1 varchar(50)
set @defname1 = 'Someone Local'
declare @defpass1 varchar(50)
set @defpass1 = 'P@ssw0rd'
declare @defdomain2 varchar(50)
set @defdomain2 = 'mss.local'
declare @deflogin2 varchar(25);
set @deflogin2 = 'Administrator'
declare @defemail2 varchar(50)
set @defemail2 = 'Alexander.Ivanov.GDC@ts.fujitsu.com'
declare @defname2 varchar(50)
set @defname2 = 'Alexander Ivanov'
declare @defdomain3 varchar(50)
set @defdomain3 = 'mss.local'
declare @deflogin3 varchar(25);
set @deflogin3 = 'tenant1'
declare @defemail3 varchar(50)
set @defemail3 = 'tenant1@mss.org'
declare @defname3 varchar(50)
set @defname3 = 'Tenant #1'
declare @defdomain4 varchar(50)
set @defdomain4 = 'mss.local'
declare @deflogin4 varchar(25);
set @deflogin4 = 'tenant2'
declare @defemail4 varchar(50)
set @defemail4 = 'tenant2@mss.org'
declare @defname4 varchar(50)
set @defname4 = 'Tenant #2'
declare @defdomain5 varchar(50)
set @defdomain5 = 'mss.local'
declare @deflogin5 varchar(25);
set @deflogin5 = 'shytenant2'
declare @defemail5 varchar(50)
set @defemail5 = 'shytenant2@mss.org'
declare @defname5 varchar(50)
set @defname5 = 'Shy User from Tenant #2'


declare @tnttest0 varchar(50)
set @tnttest0 = 'MSS Main'
declare @tnttest1 varchar(50)
set @tnttest1 = 'Test Tenant'
declare @tnttest2 varchar(50)
set @tnttest2 = 'One More Tenant'


-- [Member] is a fake role with no categories assigned. Needed just for ansure the user authenticated
-- MSS Main
declare @roleMssMain0 varchar(50)
set @roleMssMain0 = 'Member'
declare @roleMssMain1 varchar(50)
set @roleMssMain1 = 'E-mail Report Viewer'
declare @roleMssMain2 varchar(50)
set @roleMssMain2 = 'Antivirus Report Viewer'
declare @roleMssMain3 varchar(50)
set @roleMssMain3 = 'Antispam Report Viewer'
declare @roleMssMain4 varchar(50)
set @roleMssMain4 = 'IM Report Viewer'
declare @roleMssMain5 varchar(50)
set @roleMssMain5 = 'Developer'
declare @roleMssMain6 varchar(50)
set @roleMssMain6 = 'Script Developer'
declare @roleMssMain7 varchar(50)
set @roleMssMain7 = 'Tenant Services Editor'
declare @roleMssMain8 varchar(50)
set @roleMssMain8 = 'Tenant Services Viewer'
declare @roleMssMain9 varchar(50)
set @roleMssMain9 = 'Tenant`s Report Viewer'
declare @roleMssMain10 varchar(50)
set @roleMssMain10 = 'Antivirus Configurator'
declare @roleMssMain11 varchar(50)
set @roleMssMain11 = 'Antispam Configurator'
declare @roleMssMain12 varchar(50)
set @roleMssMain12 = 'IM Configurator'
declare @roleMssMain13 varchar(50)
set @roleMssMain13 = 'E-mail Configurator'
declare @roleMssMain14 varchar(50)
set @roleMssMain14 = 'Antivirus Configuration Viewer'
declare @roleMssMain15 varchar(50)
set @roleMssMain15 = 'Antispam Configuration Viewer'
declare @roleMssMain16 varchar(50)
set @roleMssMain16 = 'IM Configuration Viewer'
declare @roleMssMain17 varchar(50)
set @roleMssMain17 = 'E-mail Configuration Viewer'
-- Test Tenant
declare @roleTestTenant0 varchar(50)
set @roleTestTenant0 = 'Member'
declare @roleTestTenant1 varchar(50)
set @roleTestTenant1 = 'E-mail Report Viewer'
declare @roleTestTenant2 varchar(50)
set @roleTestTenant2 = 'Antivirus Report Viewer'
declare @roleTestTenant3 varchar(50)
set @roleTestTenant3 = 'Antispam Report Viewer'
declare @roleTestTenant4 varchar(50)
set @roleTestTenant4 = 'IM Report Viewer'
declare @roleTestTenant5 varchar(50)
set @roleTestTenant5 = 'SelfService Antispam Report Viewer'
declare @roleTestTenant6 varchar(50)
set @roleTestTenant6 = 'SelfService Antivirus Report Viewer'
declare @roleTestTenant7 varchar(50)
set @roleTestTenant7 = 'SelfService E-mail Report Viewer'
declare @roleTestTenant8 varchar(50)
set @roleTestTenant8 = 'SelfService IM Report Viewer'
declare @roleTestTenant9 varchar(50)
set @roleTestTenant9 = 'Tenant`s Report Viewer'
declare @roleTestTenant10 varchar(50)
set @roleTestTenant10 = 'Antivirus Configurator'
declare @roleTestTenant11 varchar(50)
set @roleTestTenant11 = 'Antispam Configurator'
declare @roleTestTenant12 varchar(50)
set @roleTestTenant12 = 'IM Configurator'
declare @roleTestTenant13 varchar(50)
set @roleTestTenant13 = 'E-mail Configurator'
declare @roleTestTenant14 varchar(50)
set @roleTestTenant14 = 'Antivirus Configuration RedOnly Viewer'
declare @roleTestTenant15 varchar(50)
set @roleTestTenant15 = 'Antispam Configuration RedOnly Viewer'
declare @roleTestTenant16 varchar(50)
set @roleTestTenant16 = 'IM Configuration RedOnly Viewer'
declare @roleTestTenant17 varchar(50)
set @roleTestTenant17 = 'E-mail Configuration RedOnly Viewer'
-- One More Tenant
declare @roleOneMoreTenant0 varchar(50)
set @roleOneMoreTenant0 = 'Member'
declare @roleOneMoreTenant1 varchar(50)
set @roleOneMoreTenant1 = 'E-mail Report Viewer'
declare @roleOneMoreTenant2 varchar(50)
set @roleOneMoreTenant2 = 'Antivirus Report Viewer'
declare @roleOneMoreTenant3 varchar(50)
set @roleOneMoreTenant3 = 'Antispam Report Viewer'
declare @roleOneMoreTenant4 varchar(50)
set @roleOneMoreTenant4 = 'IM Report Viewer'
declare @roleOneMoreTenant5 varchar(50)
set @roleOneMoreTenant5 = 'SelfService Antispam Report Viewer'
declare @roleOneMoreTenant6 varchar(50)
set @roleOneMoreTenant6 = 'SelfService Antivirus Report Viewer'
declare @roleOneMoreTenant7 varchar(50)
set @roleOneMoreTenant7 = 'SelfService E-mail Report Viewer'
declare @roleOneMoreTenant8 varchar(50)
set @roleOneMoreTenant8 = 'SelfService IM Report Viewer'
declare @roleOneMoreTenant9 varchar(50)
set @roleOneMoreTenant9 = 'Tenant`s Report Viewer'
declare @roleOneMoreTenant10 varchar(50)
set @roleOneMoreTenant10 = 'Antivirus Configurator'
declare @roleOneMoreTenant11 varchar(50)
set @roleOneMoreTenant11 = 'Antispam Configurator'
declare @roleOneMoreTenant12 varchar(50)
set @roleOneMoreTenant12 = 'IM Configurator'
declare @roleOneMoreTenant13 varchar(50)
set @roleOneMoreTenant13 = 'E-mail Configurator'
declare @roleOneMoreTenant14 varchar(50)
set @roleOneMoreTenant14 = 'Antivirus Configuration RedOnly Viewer'
declare @roleOneMoreTenant15 varchar(50)
set @roleOneMoreTenant15 = 'Antispam Configuration RedOnly Viewer'
declare @roleOneMoreTenant16 varchar(50)
set @roleOneMoreTenant16 = 'IM Configuration RedOnly Viewer'
declare @roleOneMoreTenant17 varchar(50)
set @roleOneMoreTenant17 = 'E-mail Configuration RedOnly Viewer'

-- SelfService Categorise
declare @cat1 varchar(50);
set @cat1 = 'SelfService Mailbox statistics';
declare @cat2 varchar(50);
set @cat2 = 'SelfService IM History';
declare @cat3 varchar(50);
set @cat3 = 'SelfService Antispam quarantine';
declare @cat4 varchar(50);
set @cat4 = 'SelfService Antivirus quarantine';
-- for Tenant's users
declare @cat5 varchar(50);
set @cat5 = 'View History (IM)';
declare @cat6 varchar(50);
set @cat6 = 'View Quarantine (Antivirus)';
declare @cat7 varchar(50);
set @cat7 = 'View Quarantine (Antispam)';
declare @cat8 varchar(50);
set @cat8 = 'Find E-mail';
declare @cat9 varchar(50);
set @cat9 = 'IM Reporting';
declare @cat10 varchar(50);
set @cat10 = 'Avir Reporting';
declare @cat11 varchar(50);
set @cat11 = 'Antispam Reporting';
declare @cat12 varchar(50);
set @cat12 = 'E-mail Reporting';
declare @cat13 varchar(50);
set @cat13 = 'E-mail Configuration';
declare @cat14 varchar(50);
set @cat14 = 'Avir Configuration';
declare @cat15 varchar(50);
set @cat15 = 'Antispam Configuration';
declare @cat16 varchar(50);
set @cat16 = 'IM Configuration';
-- MSS categories
declare @cat17 varchar(50);
set @cat17 = 'MSS IM Reporting';
declare @cat18 varchar(50);
set @cat18 = 'MSS Avir Reporting';
declare @cat19 varchar(50);
set @cat19 = 'MSS Antispam Reporting';
declare @cat20 varchar(50);
set @cat20 = 'MSS E-mail Reporting';
declare @cat21 varchar(50);
set @cat21 = 'MSS E-mail Configuration';
declare @cat22 varchar(50);
set @cat22 = 'MSS Avir Configuration';
declare @cat23 varchar(50);
set @cat23 = 'MSS Antispam Configuration';
declare @cat24 varchar(50);
set @cat24 = 'MSS IM Configuration';
declare @cat25 varchar(50);
set @cat25 = 'MSS Tenants Service Configuration';
declare @cat26 varchar(50);
set @cat26 = 'MSS Tenants Service Reporting';
-- Developer
declare @cat27 varchar(50);
set @cat27 = 'Test Environment';
declare @cat28 varchar(50);
set @cat28 = 'Tests from Outside';
-- Scripter
declare @cat29 varchar(50);
set @cat29 = 'Test Script';
declare @cat30 varchar(50);
set @cat30 = 'Script Development';

-- MSS
declare @srv1 varchar(50)
set @srv1 = 'MSS Antispam'
declare @srv2 varchar(50)
set @srv2 = 'MSS Antispam + Antivirus'
declare @srv3 varchar(50)
set @srv3 = 'MSS E-mail + Antivirus + Antispam'
-- Tenants
declare @srv4 varchar(50)
set @srv4 = 'Antivirus Service'
declare @srv5 varchar(50)
set @srv5 = 'Antispam Service'
declare @srv6 varchar(50)
set @srv6 = 'E-mail Service'
declare @srv7 varchar(50)
set @srv7 = 'Complete Service'
declare @srv8 varchar(50)
set @srv8 = 'Antivirus + Antispam'
declare @srv9 varchar(50)
set @srv9 = 'SelfService'


declare @flw1 varchar(50)
set @flw1 = 'Magic Flow'
declare @flw2 varchar(50)
set @flw2 = 'New Flow'

declare @PostfixCfgDomain varchar(50)
set @PostfixCfgDomain = 'mss.org'
declare @ClamavCfgQuarantine varchar(50)
set @ClamavCfgQuarantine = 'Perfect quarantine'
declare @SpamassasinCfgAlgorythm varchar(50)
set @SpamassasinCfgAlgorythm = '3DES'
declare @JabberCfgProtocol varchar(50)
set @JabberCfgProtocol = 'TCP'

declare @libName1 varchar(100)
set @libName1 = 'HDD functionality'
declare @libName2 varchar(100)
set @libName2 = 'RAM functionality'
declare @libName3 varchar(100)
set @libName3 = 'CPU functionality'

declare @libData1 varchar(1000)
set @libData1 = 'function GetDriveSpace '+
'{ '+
'    param ($Identity) '+
'    $drives = Get-WmiObject -ComputerName $Identity Win32_LogicalDisk | Where-Object {$_.DriveType -eq 3} '+
'    $ret = @();' + 
'  '+
'    foreach($drive in $drives) '+
'    { '+
'        $NewObjectProperties = @{ '+
'            DriveLetter=$drive.DeviceID;` '+
'            DriveSizeGB=($drive.Size/1gb).ToString("0.00");` '+
'            FreeSpaceGB=($drive.freespace/1GB).tostring("0.00");` '+
'            PercentFreeGB=(($drive.freespace/1GB)/($drive.size/1GB))*100;` '+
'	       PercentAllocatedGB=([Math]::Abs( 100 - (($drive.freespace/1GB)/($drive.size/1GB))*100) ); '+
'        }; '+
'        $ret += New-Object psobject -Property $NewObjectProperties '+
'    } '+
'    $ret '+
'} '

declare @libData2 varchar(100)
set @libData2 = 'function www {Get-Process}'
declare @libData3 varchar(100)
set @libData3 = 'function eee {Get-Service}'

declare @parName1 varchar(50)
set @parName1 = 'UserName'
declare @parName2 varchar(50)
set @parName2 = 'EmailCount'
declare @parName3 varchar(50)
set @parName3 = 'UserComment'
declare @parName4 varchar(50)
set @parName4 = 'DataTable'
declare @parName5 varchar(50)
set @parName5 = 'Directory'
declare @parName6 varchar(50)
set @parName6 = 'Listing'
declare @parName7 varchar(50)
set @parName7 = 'DriveSpace'
declare @parName8 varchar(50)
set @parName8 = 'ComputerName'
declare @parName9 varchar(50)
set @parName9 = 'Comp'

declare @scrData1 varchar(1000)
set @scrData1 = '$UserComment=Get-Random; $DataTable="dsfdsfdsf"; New-Object PSObject -Property @{' + @parName3 + '=$UserComment; ' + @parName4 + '=$DataTable;}'
declare @scrData2 varchar(100)
set @scrData2 = 'pwd;'
declare @scrData3 varchar(100)
set @scrData3 = 'eee;'
declare @scrData4 varchar(1000)
set @scrData4 = '$a = dir $InputParameters.Directory; $b = @(); $a | %{$b += New-Object PSObject -Property @{Mode=$_.Mode.ToString(); LastWriteTime = $_.LastWriteTime; Name=$_.Name; Length = $_.Length}}; New-Object PSObject -Property @{' + @parName6 + ' = $b;}'
declare @scrData5 varchar(500)
set @scrData5 = 'New-Object PSObject -Property @{' + @parName9 + ' = (Get-WmiObject -ComputerName $InputParameters.ComputerName win32_computersystem  | Select Name).Name.ToString(); ' + @parName7 + ' = (GetDriveSpace $InputParameters.ComputerName);}'

declare @tskName1 varchar(100)
set @tskName1 = 'Task Name 1'
declare @tskName2 varchar(100)
set @tskName2 = 'Task Name 2'
declare @tskName3 varchar(100)
set @tskName3 = 'Task Name 3'
declare @tskName4 varchar(100)
set @tskName4 = 'Task Name 4'
declare @tskName5 varchar(100)
set @tskName5 = 'Get directory listing'
declare @tskName6 varchar(100)
set @tskName6 = 'Get drive spaces'


declare @partypeName1 varchar(50)
set @partypeName1 = 'int'
declare @partypeName2 varchar(50)
set @partypeName2 = 'str'
declare @partypeName3 varchar(50)
set @partypeName3 = 'num'
declare @partypeName4 varchar(50)
set @partypeName4 = 'money'
declare @partypeName5 varchar(50)
set @partypeName5 = 'date'
declare @partypeName6 varchar(50)
set @partypeName6 = 'time'
declare @partypeName7 varchar(50)
set @partypeName7 = 'datetime'
declare @partypeName8 varchar(50)
set @partypeName8 = 'special'
declare @partypeName9 varchar(50)
set @partypeName9 = 'guid'
declare @partypeName10 varchar(50)
set @partypeName10 = 'table'
declare @partypeName11 varchar(50)
set @partypeName11 = 'graph'

declare @parviewName1 varchar(50)
set @parviewName1 = 'text'
declare @parviewName2 varchar(50)
set @parviewName2 = 'multiline'
declare @parviewName3 varchar(50)
set @parviewName3 = 'spinner'
declare @parviewName4 varchar(50)
set @parviewName4 = 'date'
declare @parviewName5 varchar(50)
set @parviewName5 = 'time'
declare @parviewName6 varchar(50)
set @parviewName6 = 'datetime'
declare @parviewName7 varchar(50)
set @parviewName7 = 'checkbox'
declare @parviewName8 varchar(50)
set @parviewName8 = 'slider'
declare @parviewName9 varchar(50)
set @parviewName9 = 'dropdown'
declare @parviewName10 varchar(50)
set @parviewName10 = 'list'
declare @parviewName11 varchar(50)
set @parviewName11 = 'range'
declare @parviewName12 varchar(50)
set @parviewName12 = 'selectmenu'
declare @parviewName13 varchar(50)
set @parviewName13 = 'radio'
declare @parviewName14 varchar(50)
set @parviewName14 = 'simpletable'
declare @parviewName15 varchar(50)
set @parviewName15 = 'chart'


declare @parviewOptionName1 varchar(50)
set @parviewOptionName1 = 'multiselect'
declare @parviewOptionName2 varchar(50)
set @parviewOptionName2 = 'autocomplete'
declare @parviewOptionName3 varchar(50)
set @parviewOptionName3 = 'defaultvalue'
declare @parviewOptionName4 varchar(50)
set @parviewOptionName4 = 'fillusing'
declare @parviewOptionName5 varchar(50)
set @parviewOptionName5 = 'password'
declare @parviewOptionName6 varchar(50)
set @parviewOptionName6 = 'simpletableheader'
declare @parviewOptionName7 varchar(50)
set @parviewOptionName7 = 'js:scriptinit'
declare @parviewOptionName8 varchar(50)
set @parviewOptionName8 = 'js:work'
declare @parviewOptionName9 varchar(50)
set @parviewOptionName9 = 'js:script'
declare @parviewOptionName10 varchar(50)
set @parviewOptionName10 = 'js:fields'
declare @parviewOptionName11 varchar(50)
set @parviewOptionName11 = 'js:load'
declare @parviewOptionName12 varchar(50)
set @parviewOptionName12 = 'js:html'
declare @parviewOptionName13 varchar(50)
set @parviewOptionName13 = 'js:htmlinit'
declare @parviewOptionName14 varchar(50)
set @parviewOptionName14 = 'js:html'
declare @parviewOptionName15 varchar(50)
set @parviewOptionName15 = 'js:htmlinit'
declare @parviewOptionName16 varchar(50)
set @parviewOptionName16 = 'js:html'
declare @parviewOptionName17 varchar(50)
set @parviewOptionName17 = 'js:htmlinit'
declare @parviewOptionName18 varchar(50)
set @parviewOptionName18 = 'js:script'
declare @parviewOptionName19 varchar(50)
set @parviewOptionName19 = 'js:scriptinit'


declare @scrName1 varchar(50)
set @scrName1 = 'Script 1'
declare @scrName2 varchar(50)
set @scrName2 = 'Script 2'
declare @scrName3 varchar(50)
set @scrName3 = 'Script 3'
declare @scrName4 varchar(50)
set @scrName4 = 'Get directory listing'
declare @scrName5 varchar(50)
set @scrName5 = 'Get drives free space'


declare @dirTblStr varchar(1000)
set @dirTblStr = '{columns: [ { "title": "Name", visible: true, field: "Name" }, { "title": "Length", visible: true, field: "Length"}, { "title": "Mode", visible: true, field: "Mode" }, { "title": "LastWriteTime", visible: true, field: "LastWriteTime" } ]}'
declare @parviewOptionValue12 varchar(1000)
set @parViewOptionValue12 = '<tr><td colspan="2" class="inputParamName">{paramName}:<p><div id="{paramNameId}" style="width:400px;height:400px;"></div></p></td></tr>'
declare @parviewOptionValue13 varchar(1000)
set @parViewOptionValue13 = 'ret.html.replace("{paramName}", param.Name).replace("{paramNameId}", paramName);'
declare @parviewOptionValue14 varchar(1000)
set @parViewOptionValue14 = '<tr><td class="inputParamName">{paramName}:</td><td class="inputParamValue">{paramValue}</td></tr>'
declare @parviewOptionValue15 varchar(1000)
set @parViewOptionValue15 = 'ret.html.replace("{paramName}", param.Name).replace("{paramValue}", param.RunData.Data);'
declare @parviewOptionValue16 varchar(1000)
set @parViewOptionValue16 = '<tr><td colspan="2" class="inputParamName">{paramName}:<p><table id="{paramNameId}" class="display" cellspacing="0" width="100%"></table></p></td></tr>'
declare @parviewOptionValue17 varchar(1000)
set @parViewOptionValue17 = 'ret.html.replace("{paramName}", param.Name).replace("{paramNameId}", paramName);'
declare @parviewOptionValue18 varchar(1000)
set @parViewOptionValue18 = '$("#{paramNameId}").DataTable({data: " + data + ", " + param.ParView.ParViewOption[0].Data.substring(1).substring(0, param.ParView.ParViewOption[0].Data.length - 2) + "});'
declare @parviewOptionValue19 varchar(1000)
set @parViewOptionValue19 = 'ret.script.replace("{paramNameId}", paramName);'
declare @jqPlotPieRendererJS varchar(255)
set @jqPlotPieRendererJS = 'jqPlot/plugins/jqplot.pieRenderer.js'
declare @jqPlotJS varchar(255)
set @jqPlotJS = 'jqPlot/jquery.jqplot.min.js'
declare @jqPlotCSS varchar(255)
set @jqPlotCSS = 'jqPlot/jquery.jqplot.min.css'
declare @driveSpacefields varchar(1000)
set @driveSpaceFields = '{fields:[{field:"PercentFreeGB", title: "Free (%)"}, {field:"PercentAllocatedGB", title:"Allocated (%)"}]}'
declare @driveSpaceInit varchar(1000)
set @driveSpaceInit = 'ret.script.replace("{data}", param.RunData.Data).replace("{title}", "Title").replace("{div}", paramName);'
declare @driveSpaceWork varchar(1000)
set @driveSpaceWork = ''
declare @driveSpaceSpecial varchar(1000)
set @driveSpaceSpecial = '  $.jqplot.config.enablePlugins = true;' + 
'  $.jqplot("{div}", {data}, ' + 
'  { ' + 
'      title: "{title}", ' +
'      seriesDefaults: {shadow: true, renderer: $.jqplot.PieRenderer, rendererOptions: { showDataLabels: true } }, ' + 
'      legend: { show:true } ' +
'  });'







-- LogType
if not exists(select * from dbo.LogType where Name = @Debug)
    insert into dbo.LogType(Name) values(@Debug);
if not exists(select * from dbo.LogType where Name = @Info)
    insert into dbo.LogType(Name) values(@Info);
if not exists(select * from dbo.LogType where Name = @Warning)
    insert into dbo.LogType(Name) values(@Warning);
if not exists(select * from dbo.LogType where Name = @Error)
    insert into dbo.LogType(Name) values(@Error);
if not exists(select * from dbo.LogType where Name = @Fatal)
    insert into dbo.LogType(Name) values(@Fatal);


-- LogImp
if not exists(select * from dbo.LogImp where Name = 'High')
    insert into dbo.LogImp(Name) values('High');
if not exists(select * from dbo.LogImp where Name = 'Normal')
    insert into dbo.LogImp(Name) values('Normal');
if not exists(select * from dbo.LogImp where Name = 'Low')
    insert into dbo.LogImp(Name) values('Low');

-- Cat
if not exists(select * from dbo.Cat where Name = @cat1)
    insert into dbo.Cat(Name, IsDel) values(@cat1, 0);
if not exists(select * from dbo.Cat where Name = @cat2)
    insert into dbo.Cat(Name, IsDel) values(@cat2, 0);
if not exists(select * from dbo.Cat where Name = @cat3)
    insert into dbo.Cat(Name, IsDel) values(@cat3, 0);
if not exists(select * from dbo.Cat where Name = @cat4)
    insert into dbo.Cat(Name, IsDel) values(@cat4, 0);
if not exists(select * from dbo.Cat where Name = @cat5)
    insert into dbo.Cat(Name, IsDel) values(@cat5, 0);
if not exists(select * from dbo.Cat where Name = @cat6)
    insert into dbo.Cat(Name, IsDel) values(@cat6, 0);
if not exists(select * from dbo.Cat where Name = @cat7)
    insert into dbo.Cat(Name, IsDel) values(@cat7, 0);
if not exists(select * from dbo.Cat where Name = @cat8)
    insert into dbo.Cat(Name, IsDel) values(@cat8, 0);
if not exists(select * from dbo.Cat where Name = @cat9)
    insert into dbo.Cat(Name, IsDel) values(@cat9, 0);
if not exists(select * from dbo.Cat where Name = @cat10)
    insert into dbo.Cat(Name, IsDel) values(@cat10, 0);
if not exists(select * from dbo.Cat where Name = @cat11)
    insert into dbo.Cat(Name, IsDel) values(@cat11, 0);
if not exists(select * from dbo.Cat where Name = @cat12)
    insert into dbo.Cat(Name, IsDel) values(@cat12, 0);
if not exists(select * from dbo.Cat where Name = @cat13)
    insert into dbo.Cat(Name, IsDel) values(@cat13, 0);
if not exists(select * from dbo.Cat where Name = @cat14)
    insert into dbo.Cat(Name, IsDel) values(@cat14, 0);
if not exists(select * from dbo.Cat where Name = @cat15)
    insert into dbo.Cat(Name, IsDel) values(@cat15, 0);
if not exists(select * from dbo.Cat where Name = @cat16)
    insert into dbo.Cat(Name, IsDel) values(@cat16, 0);
if not exists(select * from dbo.Cat where Name = @cat17)
    insert into dbo.Cat(Name, IsDel) values(@cat17, 0);
if not exists(select * from dbo.Cat where Name = @cat18)
    insert into dbo.Cat(Name, IsDel) values(@cat18, 0);
if not exists(select * from dbo.Cat where Name = @cat19)
    insert into dbo.Cat(Name, IsDel) values(@cat19, 0);
if not exists(select * from dbo.Cat where Name = @cat20)
    insert into dbo.Cat(Name, IsDel) values(@cat20, 0);
if not exists(select * from dbo.Cat where Name = @cat21)
    insert into dbo.Cat(Name, IsDel) values(@cat21, 0);
if not exists(select * from dbo.Cat where Name = @cat22)
    insert into dbo.Cat(Name, IsDel) values(@cat22, 0);
if not exists(select * from dbo.Cat where Name = @cat23)
    insert into dbo.Cat(Name, IsDel) values(@cat23, 0);
if not exists(select * from dbo.Cat where Name = @cat24)
    insert into dbo.Cat(Name, IsDel) values(@cat24, 0);
if not exists(select * from dbo.Cat where Name = @cat25)
    insert into dbo.Cat(Name, IsDel) values(@cat25, 0);
if not exists(select * from dbo.Cat where Name = @cat26)
    insert into dbo.Cat(Name, IsDel) values(@cat26, 0);
if not exists(select * from dbo.Cat where Name = @cat27)
    insert into dbo.Cat(Name, IsDel) values(@cat27, 0);
if not exists(select * from dbo.Cat where Name = @cat28)
    insert into dbo.Cat(Name, IsDel) values(@cat28, 0);
if not exists(select * from dbo.Cat where Name = @cat29)
    insert into dbo.Cat(Name, IsDel) values(@cat29, 0);
if not exists(select * from dbo.Cat where Name = @cat30)
    insert into dbo.Cat(Name, IsDel) values(@cat30, 0);

-- ChgStateGrp
if not exists(select * from dbo.ChgStateGrp where Name = @User)
    insert into dbo.ChgStateGrp(Name) values(@User);
if not exists(select * from dbo.ChgStateGrp where Name = @Team)
    insert into dbo.ChgStateGrp(Name) values(@Team);
if not exists(select * from dbo.ChgStateGrp where Name = @Tenant)
    insert into dbo.ChgStateGrp(Name) values(@Tenant);
if not exists(select * from dbo.ChgStateGrp where Name = @Cfg)
    insert into dbo.ChgStateGrp(Name) values(@Cfg);
if not exists(select * from dbo.ChgStateGrp where Name = @RunTask)
    insert into dbo.ChgStateGrp(Name) values(@RunTask);
if not exists(select * from dbo.ChgStateGrp where Name = @RunFlow)
    insert into dbo.ChgStateGrp(Name) values(@RunFlow);

-- ChgState @User
if not exists(select * from dbo.ChgState where ChgStateGrp = (select Id from dbo.ChgStateGrp where Name = @User) and Name = @Create)
    insert into dbo.ChgState(Name, ChgStateGrp)
        values(@Create, (select Id from dbo.ChgStateGrp where Name = @User));
if not exists(select * from dbo.ChgState where ChgStateGrp = (select Id from dbo.ChgStateGrp where Name = @User) and Name = @Edit)
    insert into dbo.ChgState(Name, ChgStateGrp)
        values(@Edit, (select Id from dbo.ChgStateGrp where Name = @User));
if not exists(select * from dbo.ChgState where ChgStateGrp = (select Id from dbo.ChgStateGrp where Name = @User) and Name = @Delete)
    insert into dbo.ChgState(Name, ChgStateGrp)
        values(@Delete, (select Id from dbo.ChgStateGrp where Name = @User));
if not exists(select * from dbo.ChgState where ChgStateGrp = (select Id from dbo.ChgStateGrp where Name = @User) and Name = @Update)
    insert into dbo.ChgState(Name, ChgStateGrp)
        values(@Update, (select Id from dbo.ChgStateGrp where Name = @User));
-- ChgState @Team
if not exists(select * from dbo.ChgState where ChgStateGrp = (select Id from dbo.ChgStateGrp where Name = @Team) and Name = @Create)
    insert into dbo.ChgState(Name, ChgStateGrp)
        values(@Create, (select Id from dbo.ChgStateGrp where Name = @Team));
if not exists(select * from dbo.ChgState where ChgStateGrp = (select Id from dbo.ChgStateGrp where Name = @Team) and Name = @Edit)
    insert into dbo.ChgState(Name, ChgStateGrp)
        values(@Edit, (select Id from dbo.ChgStateGrp where Name = @Team));
if not exists(select * from dbo.ChgState where ChgStateGrp = (select Id from dbo.ChgStateGrp where Name = @Team) and Name = @Delete)
    insert into dbo.ChgState(Name, ChgStateGrp)
        values(@Delete, (select Id from dbo.ChgStateGrp where Name = @Team));
if not exists(select * from dbo.ChgState where ChgStateGrp = (select Id from dbo.ChgStateGrp where Name = @Team) and Name = @Update)
    insert into dbo.ChgState(Name, ChgStateGrp)
        values(@Update, (select Id from dbo.ChgStateGrp where Name = @Team));
-- ChgState @Tenant
if not exists(select * from dbo.ChgState where ChgStateGrp = (select Id from dbo.ChgStateGrp where Name = @Tenant) and Name = @Create)
    insert into dbo.ChgState(Name, ChgStateGrp)
        values(@Create, (select Id from dbo.ChgStateGrp where Name = @Tenant));
if not exists(select * from dbo.ChgState where ChgStateGrp = (select Id from dbo.ChgStateGrp where Name = @Tenant) and Name = @Edit)
    insert into dbo.ChgState(Name, ChgStateGrp)
        values(@Edit, (select Id from dbo.ChgStateGrp where Name = @Tenant));
if not exists(select * from dbo.ChgState where ChgStateGrp = (select Id from dbo.ChgStateGrp where Name = @Tenant) and Name = @Delete)
    insert into dbo.ChgState(Name, ChgStateGrp)
        values(@Delete, (select Id from dbo.ChgStateGrp where Name = @Tenant));
if not exists(select * from dbo.ChgState where ChgStateGrp = (select Id from dbo.ChgStateGrp where Name = @Tenant) and Name = @Update)
    insert into dbo.ChgState(Name, ChgStateGrp)
        values(@Update, (select Id from dbo.ChgStateGrp where Name = @Tenant));
-- ChgState @Cfg
if not exists(select * from dbo.ChgState where ChgStateGrp = (select Id from dbo.ChgStateGrp where Name = @Cfg) and Name = @Create)
    insert into dbo.ChgState(Name, ChgStateGrp)
        values(@Create, (select Id from dbo.ChgStateGrp where Name = @Cfg));
if not exists(select * from dbo.ChgState where ChgStateGrp = (select Id from dbo.ChgStateGrp where Name = @Cfg) and Name = @Edit)
    insert into dbo.ChgState(Name, ChgStateGrp)
        values(@Edit, (select Id from dbo.ChgStateGrp where Name = @Cfg));
if not exists(select * from dbo.ChgState where ChgStateGrp = (select Id from dbo.ChgStateGrp where Name = @Cfg) and Name = @Delete)
    insert into dbo.ChgState(Name, ChgStateGrp)
        values(@Delete, (select Id from dbo.ChgStateGrp where Name = @Cfg));
if not exists(select * from dbo.ChgState where ChgStateGrp = (select Id from dbo.ChgStateGrp where Name = @Cfg) and Name = @Update)
    insert into dbo.ChgState(Name, ChgStateGrp)
        values(@Update, (select Id from dbo.ChgStateGrp where Name = @Cfg));
-- ChgState @RunTask
if not exists(select * from dbo.ChgState where ChgStateGrp = (select Id from dbo.ChgStateGrp where Name = @RunTask) and Name = @CreateRunObject)
    insert into dbo.ChgState(Name, ChgStateGrp)
        values(@CreateRunObject, (select Id from dbo.ChgStateGrp where Name = @RunTask));
if not exists(select * from dbo.ChgState where ChgStateGrp = (select Id from dbo.ChgStateGrp where Name = @RunTask) and Name = @CheckRunParam)
    insert into dbo.ChgState(Name, ChgStateGrp)
        values(@CheckRunParam, (select Id from dbo.ChgStateGrp where Name = @RunTask));
if not exists(select * from dbo.ChgState where ChgStateGrp = (select Id from dbo.ChgStateGrp where Name = @RunTask) and Name = @FillInRunParam)
    insert into dbo.ChgState(Name, ChgStateGrp)
        values(@FillInRunParam, (select Id from dbo.ChgStateGrp where Name = @RunTask));
if not exists(select * from dbo.ChgState where ChgStateGrp = (select Id from dbo.ChgStateGrp where Name = @RunTask) and Name = @PrepareForRun)
    insert into dbo.ChgState(Name, ChgStateGrp)
        values(@PrepareForRun, (select Id from dbo.ChgStateGrp where Name = @RunTask));
if not exists(select * from dbo.ChgState where ChgStateGrp = (select Id from dbo.ChgStateGrp where Name = @RunTask) and Name = @Run)
    insert into dbo.ChgState(Name, ChgStateGrp)
        values(@Run, (select Id from dbo.ChgStateGrp where Name = @RunTask));
if not exists(select * from dbo.ChgState where ChgStateGrp = (select Id from dbo.ChgStateGrp where Name = @RunTask) and Name = @CheckReturnedRun)
    insert into dbo.ChgState(Name, ChgStateGrp)
        values(@CheckReturnedRun, (select Id from dbo.ChgStateGrp where Name = @RunTask));
if not exists(select * from dbo.ChgState where ChgStateGrp = (select Id from dbo.ChgStateGrp where Name = @RunTask) and Name = @StoreReturnedRun)
    insert into dbo.ChgState(Name, ChgStateGrp)
        values(@StoreReturnedRun, (select Id from dbo.ChgStateGrp where Name = @RunTask));
if not exists(select * from dbo.ChgState where ChgStateGrp = (select Id from dbo.ChgStateGrp where Name = @RunTask) and Name = @RunSuccess)
    insert into dbo.ChgState(Name, ChgStateGrp)
        values(@RunSuccess, (select Id from dbo.ChgStateGrp where Name = @RunTask));
if not exists(select * from dbo.ChgState where ChgStateGrp = (select Id from dbo.ChgStateGrp where Name = @RunTask) and Name = @RunWithError)
    insert into dbo.ChgState(Name, ChgStateGrp)
        values(@RunWithError, (select Id from dbo.ChgStateGrp where Name = @RunTask));
if not exists(select * from dbo.ChgState where ChgStateGrp = (select Id from dbo.ChgStateGrp where Name = @RunTask) and Name = @RunWithException)
    insert into dbo.ChgState(Name, ChgStateGrp)
        values(@RunWithException, (select Id from dbo.ChgStateGrp where Name = @RunTask));
if not exists(select * from dbo.ChgState where ChgStateGrp = (select Id from dbo.ChgStateGrp where Name = @RunTask) and Name = @PSRetCode)
    insert into dbo.ChgState(Name, ChgStateGrp)
        values(@PSRetCode, (select Id from dbo.ChgStateGrp where Name = @RunTask));
if not exists(select * from dbo.ChgState where ChgStateGrp = (select Id from dbo.ChgStateGrp where Name = @RunTask) and Name = @PSRetMsg)
    insert into dbo.ChgState(Name, ChgStateGrp)
        values(@PSRetMsg, (select Id from dbo.ChgStateGrp where Name = @RunTask));
-- ChgState @RunFlow
if not exists(select * from dbo.ChgState where ChgStateGrp = (select Id from dbo.ChgStateGrp where Name = @RunFlow) and Name = @CreateRunObject)
    insert into dbo.ChgState(Name, ChgStateGrp)
        values(@CreateRunObject, (select Id from dbo.ChgStateGrp where Name = @RunFlow));
if not exists(select * from dbo.ChgState where ChgStateGrp = (select Id from dbo.ChgStateGrp where Name = @RunFlow) and Name = @CheckRunParam)
    insert into dbo.ChgState(Name, ChgStateGrp)
        values(@CheckRunParam, (select Id from dbo.ChgStateGrp where Name = @RunFlow));
if not exists(select * from dbo.ChgState where ChgStateGrp = (select Id from dbo.ChgStateGrp where Name = @RunFlow) and Name = @FillInRunParam)
    insert into dbo.ChgState(Name, ChgStateGrp)
        values(@FillInRunParam, (select Id from dbo.ChgStateGrp where Name = @RunFlow));
if not exists(select * from dbo.ChgState where ChgStateGrp = (select Id from dbo.ChgStateGrp where Name = @RunFlow) and Name = @PrepareForRun)
    insert into dbo.ChgState(Name, ChgStateGrp)
        values(@PrepareForRun, (select Id from dbo.ChgStateGrp where Name = @RunFlow));
if not exists(select * from dbo.ChgState where ChgStateGrp = (select Id from dbo.ChgStateGrp where Name = @RunFlow) and Name = @Run)
    insert into dbo.ChgState(Name, ChgStateGrp)
        values(@Run, (select Id from dbo.ChgStateGrp where Name = @RunFlow));
if not exists(select * from dbo.ChgState where ChgStateGrp = (select Id from dbo.ChgStateGrp where Name = @RunFlow) and Name = @CheckReturnedRun)
    insert into dbo.ChgState(Name, ChgStateGrp)
        values(@CheckReturnedRun, (select Id from dbo.ChgStateGrp where Name = @RunFlow));
if not exists(select * from dbo.ChgState where ChgStateGrp = (select Id from dbo.ChgStateGrp where Name = @RunFlow) and Name = @StoreReturnedRun)
    insert into dbo.ChgState(Name, ChgStateGrp)
        values(@StoreReturnedRun, (select Id from dbo.ChgStateGrp where Name = @RunFlow));
if not exists(select * from dbo.ChgState where ChgStateGrp = (select Id from dbo.ChgStateGrp where Name = @RunFlow) and Name = @RunSuccess)
    insert into dbo.ChgState(Name, ChgStateGrp)
        values(@RunSuccess, (select Id from dbo.ChgStateGrp where Name = @RunFlow));
if not exists(select * from dbo.ChgState where ChgStateGrp = (select Id from dbo.ChgStateGrp where Name = @RunFlow) and Name = @RunWithError)
    insert into dbo.ChgState(Name, ChgStateGrp)
        values(@RunWithError, (select Id from dbo.ChgStateGrp where Name = @RunFlow));
if not exists(select * from dbo.ChgState where ChgStateGrp = (select Id from dbo.ChgStateGrp where Name = @RunFlow) and Name = @RunWithException)
    insert into dbo.ChgState(Name, ChgStateGrp)
        values(@RunWithException, (select Id from dbo.ChgStateGrp where Name = @RunFlow));
if not exists(select * from dbo.ChgState where ChgStateGrp = (select Id from dbo.ChgStateGrp where Name = @RunFlow) and Name = @PSRetCode)
    insert into dbo.ChgState(Name, ChgStateGrp)
        values(@PSRetCode, (select Id from dbo.ChgStateGrp where Name = @RunFlow));
if not exists(select * from dbo.ChgState where ChgStateGrp = (select Id from dbo.ChgStateGrp where Name = @RunFlow) and Name = @PSRetMsg)
    insert into dbo.ChgState(Name, ChgStateGrp)
        values(@PSRetMsg, (select Id from dbo.ChgStateGrp where Name = @RunFlow));


-- Team
if not exists(select * from dbo.Team where Name = @team1)
    insert into dbo.Team(Name, IsDel, IsDisabled) values(@team1, 0, 0);
if not exists(select * from dbo.Team where Name = @team2)
    insert into dbo.Team(Name, IsDel, IsDisabled) values(@team2, 0, 0);
if not exists(select * from dbo.Team where Name = @team3)
    insert into dbo.Team(Name, IsDel, IsDisabled) values(@team3, 0, 0);
if not exists(select * from dbo.Team where Name = @team4)
    insert into dbo.Team(Name, IsDel, IsDisabled) values(@team4, 0, 0);
if not exists(select * from dbo.Team where Name = @team5)
    insert into dbo.Team(Name, IsDel, IsDisabled) values(@team5, 0, 0);
if not exists(select * from dbo.Team where Name = @team6)
    insert into dbo.Team(Name, IsDel, IsDisabled) values(@team6, 0, 0);
if not exists(select * from dbo.Team where Name = @team7)
    insert into dbo.Team(Name, IsDel, IsDisabled) values(@team7, 0, 0);
if not exists(select * from dbo.Team where Name = @team8)
    insert into dbo.Team(Name, IsDel, IsDisabled) values(@team8, 0, 0);
if not exists(select * from dbo.Team where Name = @team9)
    insert into dbo.Team(Name, IsDel, IsDisabled) values(@team9, 0, 0);

-- Usr
if not exists(select * from dbo.Usr where ULogin = @deflogin1)
    insert into dbo.Usr(Name, IsLocal, IsDel, IsDisabled, UDomain, ULogin, UEmail, Theme, Pass) values(@defname1, 1, 0, 0, null, @deflogin1, @defemail1, null, @defpass1);
if not exists(select * from dbo.Usr where ULogin = @deflogin2)
    insert into dbo.Usr(Name, IsLocal, IsDel, IsDisabled, UDomain, ULogin, UEmail, Theme, Pass) values(@defname2, 0, 0, 0, @defdomain2, @deflogin2, @defemail2, null, null);
if not exists(select * from dbo.Usr where ULogin = @deflogin3)
    insert into dbo.Usr(Name, IsLocal, IsDel, IsDisabled, UDomain, ULogin, UEmail, Theme, Pass) values(@defname3, 0, 0, 0, @defdomain3, @deflogin3, @defemail3, null, null);
if not exists(select * from dbo.Usr where ULogin = @deflogin4)
    insert into dbo.Usr(Name, IsLocal, IsDel, IsDisabled, UDomain, ULogin, UEmail, Theme, Pass) values(@defname4, 0, 0, 0, @defdomain4, @deflogin4, @defemail4, null, null);
if not exists(select * from dbo.Usr where ULogin = @deflogin5)
    insert into dbo.Usr(Name, IsLocal, IsDel, IsDisabled, UDomain, ULogin, UEmail, Theme, Pass) values(@defname5, 0, 0, 0, @defdomain5, @deflogin5, @defemail5, null, null);

-- Cfg
if not exists(select * from dbo.Cfg where IsDel = 0 and DefLogin='Administrator' and DefPass='P@ssw0rd' and DefDomain='mss.local')
    insert into dbo.Cfg(IsDel, DefLogin, DefPass, DefDomain) values(0, 'Administrator', 'P@ssw0rd', 'mss.local');
if not exists(select * from dbo.Cfg where IsDel = 0 and DefLogin='alex' and DefPass='P@ssw0rd' and DefDomain='mss.local')
    insert into dbo.Cfg(IsDel, DefLogin, DefPass, DefDomain) values(0, 'alex', 'P@ssw0rd', 'mss.local');

-- Tnt
if not exists(select * from dbo.Tnt where Name = @tnttest0)
begin
	declare @cfgId BIGINT;
	select top 1 @cfgId = Id from dbo.Cfg where IsDel = 0 and DefLogin='Administrator' and DefPass='P@ssw0rd' and DefDomain='mss.local'
    insert into dbo.Tnt(Name, Cfg, IsDel) values(@tnttest0, @cfgId, 0);
end
if not exists(select * from dbo.Tnt where Name = @tnttest1)
begin
	select top 1 @cfgId = Id from dbo.Cfg where IsDel = 0 and DefLogin='alex' and DefPass='P@ssw0rd' and DefDomain='mss.local'
    insert into dbo.Tnt(Name, Cfg, IsDel) values(@tnttest1, @cfgId, 0);
end
if not exists(select * from dbo.Tnt where Name = @tnttest2)
begin
	select top 1 @cfgId = Id from dbo.Cfg where IsDel = 0 and DefLogin='Administrator' and DefPass='P@ssw0rd' and DefDomain='mss.local'
    insert into dbo.Tnt(Name, Cfg, IsDel) values(@tnttest2, @cfgId, 0);
end

-- PostfixCfg
if not exists(select * from dbo.PostfixCfg where Domain = @PostfixCfgDomain)
    insert into dbo.PostfixCfg(Domain) values(@PostfixCfgDomain);
-- ClamavCfg
if not exists(select * from dbo.ClamavCfg where Quarantine = @ClamavCfgQuarantine)
    insert into dbo.ClamavCfg(Quarantine) values(@ClamavCfgQuarantine);
-- SpamassasinCfg
if not exists(select * from dbo.SpamassasinCfg where Algorythm = @SpamassasinCfgAlgorythm)
    insert into dbo.SpamassasinCfg(Algorythm) values(@SpamassasinCfgAlgorythm);
-- JabberCfg
if not exists(select * from dbo.JabberCfg where Protocol = @JabberCfgProtocol)
    insert into dbo.JabberCfg(Protocol) values(@JabberCfgProtocol);


-- Srv (Service for Tenant)
if not exists(select * from dbo.Srv where Name = @srv1)
    insert into dbo.Srv(Name, PayPerDay, IsDisabled) values(@srv1, 1.35, 0);
if not exists(select * from dbo.Srv where Name = @srv2)
    insert into dbo.Srv(Name, PayPerDay, IsDisabled) values(@srv2, 0.5, 0);
if not exists(select * from dbo.Srv where Name = @srv3)
    insert into dbo.Srv(Name, PayPerDay, IsDisabled) values(@srv3, 0.5, 0);
if not exists(select * from dbo.Srv where Name = @srv4)
    insert into dbo.Srv(Name, PayPerDay, IsDisabled) values(@srv4, 0.55, 0);
if not exists(select * from dbo.Srv where Name = @srv5)
    insert into dbo.Srv(Name, PayPerDay, IsDisabled) values(@srv5, 0.65, 0);
if not exists(select * from dbo.Srv where Name = @srv6)
    insert into dbo.Srv(Name, PayPerDay, IsDisabled) values(@srv6, 0.75, 0);
if not exists(select * from dbo.Srv where Name = @srv7)
    insert into dbo.Srv(Name, PayPerDay, IsDisabled) values(@srv7, 1.41, 0);
if not exists(select * from dbo.Srv where Name = @srv8)
    insert into dbo.Srv(Name, PayPerDay, IsDisabled) values(@srv8, 5.1, 0);
if not exists(select * from dbo.Srv where Name = @srv9)
    insert into dbo.Srv(Name, PayPerDay, IsDisabled) values(@srv9, 0.3, 0);

-- TntSrv
-- MSS Main
if not exists(select * from dbo.TntSrv where Tnt = (select Id from dbo.Tnt where Name=@tnttest0) and Srv = (select Id from dbo.Srv where Name=@srv1))
    insert into dbo.TntSrv(Tnt, Srv) values((select Id from dbo.Tnt where Name=@tnttest0), (select Id from dbo.Srv where Name=@srv1))
if not exists(select * from dbo.TntSrv where Tnt = (select Id from dbo.Tnt where Name=@tnttest0) and Srv = (select Id from dbo.Srv where Name=@srv2))
    insert into dbo.TntSrv(Tnt, Srv) values((select Id from dbo.Tnt where Name=@tnttest0), (select Id from dbo.Srv where Name=@srv2))
if not exists(select * from dbo.TntSrv where Tnt = (select Id from dbo.Tnt where Name=@tnttest0) and Srv = (select Id from dbo.Srv where Name=@srv3))
    insert into dbo.TntSrv(Tnt, Srv) values((select Id from dbo.Tnt where Name=@tnttest0), (select Id from dbo.Srv where Name=@srv3))
-- Test Tenant
if not exists(select * from dbo.TntSrv where Tnt = (select Id from dbo.Tnt where Name=@tnttest1) and Srv = (select Id from dbo.Srv where Name=@srv4))
    insert into dbo.TntSrv(Tnt, Srv) values((select Id from dbo.Tnt where Name=@tnttest1), (select Id from dbo.Srv where Name=@srv4))
if not exists(select * from dbo.TntSrv where Tnt = (select Id from dbo.Tnt where Name=@tnttest1) and Srv = (select Id from dbo.Srv where Name=@srv5))
    insert into dbo.TntSrv(Tnt, Srv) values((select Id from dbo.Tnt where Name=@tnttest1), (select Id from dbo.Srv where Name=@srv5))
if not exists(select * from dbo.TntSrv where Tnt = (select Id from dbo.Tnt where Name=@tnttest1) and Srv = (select Id from dbo.Srv where Name=@srv6))
    insert into dbo.TntSrv(Tnt, Srv) values((select Id from dbo.Tnt where Name=@tnttest1), (select Id from dbo.Srv where Name=@srv6))
if not exists(select * from dbo.TntSrv where Tnt = (select Id from dbo.Tnt where Name=@tnttest1) and Srv = (select Id from dbo.Srv where Name=@srv7))
    insert into dbo.TntSrv(Tnt, Srv) values((select Id from dbo.Tnt where Name=@tnttest1), (select Id from dbo.Srv where Name=@srv7))
if not exists(select * from dbo.TntSrv where Tnt = (select Id from dbo.Tnt where Name=@tnttest1) and Srv = (select Id from dbo.Srv where Name=@srv8))
    insert into dbo.TntSrv(Tnt, Srv) values((select Id from dbo.Tnt where Name=@tnttest1), (select Id from dbo.Srv where Name=@srv8))
-- Test Tenant
if not exists(select * from dbo.TntSrv where Tnt = (select Id from dbo.Tnt where Name=@tnttest2) and Srv = (select Id from dbo.Srv where Name=@srv4))
    insert into dbo.TntSrv(Tnt, Srv) values((select Id from dbo.Tnt where Name=@tnttest2), (select Id from dbo.Srv where Name=@srv4))
if not exists(select * from dbo.TntSrv where Tnt = (select Id from dbo.Tnt where Name=@tnttest2) and Srv = (select Id from dbo.Srv where Name=@srv5))
    insert into dbo.TntSrv(Tnt, Srv) values((select Id from dbo.Tnt where Name=@tnttest2), (select Id from dbo.Srv where Name=@srv5))
if not exists(select * from dbo.TntSrv where Tnt = (select Id from dbo.Tnt where Name=@tnttest2) and Srv = (select Id from dbo.Srv where Name=@srv7))
    insert into dbo.TntSrv(Tnt, Srv) values((select Id from dbo.Tnt where Name=@tnttest2), (select Id from dbo.Srv where Name=@srv7))


-- SrvCat
-- MSS Antispam
if not exists(select * from dbo.SrvCat where Srv = (select Id from dbo.Srv where Name=@srv1) and Cat=(select Id from Cat where Name=@cat19))
    insert into dbo.SrvCat(Srv, Cat) values((select Id from dbo.Srv where Name=@srv1), (select Id from Cat where Name=@cat19))
if not exists(select * from dbo.SrvCat where Srv = (select Id from dbo.Srv where Name=@srv1) and Cat=(select Id from Cat where Name=@cat23))
    insert into dbo.SrvCat(Srv, Cat) values((select Id from dbo.Srv where Name=@srv1), (select Id from Cat where Name=@cat23))
-- MSS Antispam + Antivirus
if not exists(select * from dbo.SrvCat where Srv = (select Id from dbo.Srv where Name=@srv2) and Cat=(select Id from Cat where Name=@cat18))
    insert into dbo.SrvCat(Srv, Cat) values((select Id from dbo.Srv where Name=@srv2), (select Id from Cat where Name=@cat18))
if not exists(select * from dbo.SrvCat where Srv = (select Id from dbo.Srv where Name=@srv2) and Cat=(select Id from Cat where Name=@cat19))
    insert into dbo.SrvCat(Srv, Cat) values((select Id from dbo.Srv where Name=@srv2), (select Id from Cat where Name=@cat19))
if not exists(select * from dbo.SrvCat where Srv = (select Id from dbo.Srv where Name=@srv2) and Cat=(select Id from Cat where Name=@cat22))
    insert into dbo.SrvCat(Srv, Cat) values((select Id from dbo.Srv where Name=@srv2), (select Id from Cat where Name=@cat22))
if not exists(select * from dbo.SrvCat where Srv = (select Id from dbo.Srv where Name=@srv2) and Cat=(select Id from Cat where Name=@cat23))
    insert into dbo.SrvCat(Srv, Cat) values((select Id from dbo.Srv where Name=@srv2), (select Id from Cat where Name=@cat23))
-- MSS E-mail + Antivirus + Antispam
if not exists(select * from dbo.SrvCat where Srv = (select Id from dbo.Srv where Name=@srv3) and Cat=(select Id from Cat where Name=@cat18))
    insert into dbo.SrvCat(Srv, Cat) values((select Id from dbo.Srv where Name=@srv3), (select Id from Cat where Name=@cat18))
if not exists(select * from dbo.SrvCat where Srv = (select Id from dbo.Srv where Name=@srv3) and Cat=(select Id from Cat where Name=@cat19))
    insert into dbo.SrvCat(Srv, Cat) values((select Id from dbo.Srv where Name=@srv3), (select Id from Cat where Name=@cat19))
if not exists(select * from dbo.SrvCat where Srv = (select Id from dbo.Srv where Name=@srv3) and Cat=(select Id from Cat where Name=@cat20))
    insert into dbo.SrvCat(Srv, Cat) values((select Id from dbo.Srv where Name=@srv3), (select Id from Cat where Name=@cat20))
if not exists(select * from dbo.SrvCat where Srv = (select Id from dbo.Srv where Name=@srv3) and Cat=(select Id from Cat where Name=@cat21))
    insert into dbo.SrvCat(Srv, Cat) values((select Id from dbo.Srv where Name=@srv3), (select Id from Cat where Name=@cat21))
if not exists(select * from dbo.SrvCat where Srv = (select Id from dbo.Srv where Name=@srv3) and Cat=(select Id from Cat where Name=@cat22))
    insert into dbo.SrvCat(Srv, Cat) values((select Id from dbo.Srv where Name=@srv3), (select Id from Cat where Name=@cat22))
if not exists(select * from dbo.SrvCat where Srv = (select Id from dbo.Srv where Name=@srv3) and Cat=(select Id from Cat where Name=@cat23))
    insert into dbo.SrvCat(Srv, Cat) values((select Id from dbo.Srv where Name=@srv3), (select Id from Cat where Name=@cat23))
-- Tenants
-- Antivirus Service Full
if not exists(select * from dbo.SrvCat where Srv = (select Id from dbo.Srv where Name=@srv4) and Cat=(select Id from Cat where Name=@cat6))
    insert into dbo.SrvCat(Srv, Cat) values((select Id from dbo.Srv where Name=@srv4), (select Id from Cat where Name=@cat6))
if not exists(select * from dbo.SrvCat where Srv = (select Id from dbo.Srv where Name=@srv4) and Cat=(select Id from Cat where Name=@cat10))
    insert into dbo.SrvCat(Srv, Cat) values((select Id from dbo.Srv where Name=@srv4), (select Id from Cat where Name=@cat10))
if not exists(select * from dbo.SrvCat where Srv = (select Id from dbo.Srv where Name=@srv4) and Cat=(select Id from Cat where Name=@cat14))
    insert into dbo.SrvCat(Srv, Cat) values((select Id from dbo.Srv where Name=@srv4), (select Id from Cat where Name=@cat14))
-- Antispam Service Full
if not exists(select * from dbo.SrvCat where Srv = (select Id from dbo.Srv where Name=@srv5) and Cat=(select Id from Cat where Name=@cat7))
    insert into dbo.SrvCat(Srv, Cat) values((select Id from dbo.Srv where Name=@srv5), (select Id from Cat where Name=@cat7))
if not exists(select * from dbo.SrvCat where Srv = (select Id from dbo.Srv where Name=@srv5) and Cat=(select Id from Cat where Name=@cat11))
    insert into dbo.SrvCat(Srv, Cat) values((select Id from dbo.Srv where Name=@srv5), (select Id from Cat where Name=@cat11))
if not exists(select * from dbo.SrvCat where Srv = (select Id from dbo.Srv where Name=@srv5) and Cat=(select Id from Cat where Name=@cat15))
    insert into dbo.SrvCat(Srv, Cat) values((select Id from dbo.Srv where Name=@srv5), (select Id from Cat where Name=@cat15))
-- E-mail Service Full
if not exists(select * from dbo.SrvCat where Srv = (select Id from dbo.Srv where Name=@srv6) and Cat=(select Id from Cat where Name=@cat8))
    insert into dbo.SrvCat(Srv, Cat) values((select Id from dbo.Srv where Name=@srv6), (select Id from Cat where Name=@cat8))
if not exists(select * from dbo.SrvCat where Srv = (select Id from dbo.Srv where Name=@srv6) and Cat=(select Id from Cat where Name=@cat12))
    insert into dbo.SrvCat(Srv, Cat) values((select Id from dbo.Srv where Name=@srv6), (select Id from Cat where Name=@cat12))
if not exists(select * from dbo.SrvCat where Srv = (select Id from dbo.Srv where Name=@srv6) and Cat=(select Id from Cat where Name=@cat13))
    insert into dbo.SrvCat(Srv, Cat) values((select Id from dbo.Srv where Name=@srv6), (select Id from Cat where Name=@cat13))
-- Complete E-mail service
if not exists(select * from dbo.SrvCat where Srv = (select Id from dbo.Srv where Name=@srv7) and Cat=(select Id from Cat where Name=@cat6))
    insert into dbo.SrvCat(Srv, Cat) values((select Id from dbo.Srv where Name=@srv7), (select Id from Cat where Name=@cat6))
if not exists(select * from dbo.SrvCat where Srv = (select Id from dbo.Srv where Name=@srv7) and Cat=(select Id from Cat where Name=@cat7))
    insert into dbo.SrvCat(Srv, Cat) values((select Id from dbo.Srv where Name=@srv7), (select Id from Cat where Name=@cat7))
if not exists(select * from dbo.SrvCat where Srv = (select Id from dbo.Srv where Name=@srv7) and Cat=(select Id from Cat where Name=@cat8))
    insert into dbo.SrvCat(Srv, Cat) values((select Id from dbo.Srv where Name=@srv7), (select Id from Cat where Name=@cat8))
if not exists(select * from dbo.SrvCat where Srv = (select Id from dbo.Srv where Name=@srv7) and Cat=(select Id from Cat where Name=@cat10))
    insert into dbo.SrvCat(Srv, Cat) values((select Id from dbo.Srv where Name=@srv7), (select Id from Cat where Name=@cat10))
if not exists(select * from dbo.SrvCat where Srv = (select Id from dbo.Srv where Name=@srv7) and Cat=(select Id from Cat where Name=@cat11))
    insert into dbo.SrvCat(Srv, Cat) values((select Id from dbo.Srv where Name=@srv7), (select Id from Cat where Name=@cat11))
if not exists(select * from dbo.SrvCat where Srv = (select Id from dbo.Srv where Name=@srv7) and Cat=(select Id from Cat where Name=@cat12))
    insert into dbo.SrvCat(Srv, Cat) values((select Id from dbo.Srv where Name=@srv7), (select Id from Cat where Name=@cat12))
if not exists(select * from dbo.SrvCat where Srv = (select Id from dbo.Srv where Name=@srv7) and Cat=(select Id from Cat where Name=@cat13))
    insert into dbo.SrvCat(Srv, Cat) values((select Id from dbo.Srv where Name=@srv7), (select Id from Cat where Name=@cat13))
if not exists(select * from dbo.SrvCat where Srv = (select Id from dbo.Srv where Name=@srv7) and Cat=(select Id from Cat where Name=@cat14))
    insert into dbo.SrvCat(Srv, Cat) values((select Id from dbo.Srv where Name=@srv7), (select Id from Cat where Name=@cat14))
if not exists(select * from dbo.SrvCat where Srv = (select Id from dbo.Srv where Name=@srv7) and Cat=(select Id from Cat where Name=@cat15))
    insert into dbo.SrvCat(Srv, Cat) values((select Id from dbo.Srv where Name=@srv7), (select Id from Cat where Name=@cat15))
-- Antivirus + Antispam
if not exists(select * from dbo.SrvCat where Srv = (select Id from dbo.Srv where Name=@srv8) and Cat=(select Id from Cat where Name=@cat6))
    insert into dbo.SrvCat(Srv, Cat) values((select Id from dbo.Srv where Name=@srv8), (select Id from Cat where Name=@cat6))
if not exists(select * from dbo.SrvCat where Srv = (select Id from dbo.Srv where Name=@srv8) and Cat=(select Id from Cat where Name=@cat7))
    insert into dbo.SrvCat(Srv, Cat) values((select Id from dbo.Srv where Name=@srv8), (select Id from Cat where Name=@cat7))
if not exists(select * from dbo.SrvCat where Srv = (select Id from dbo.Srv where Name=@srv8) and Cat=(select Id from Cat where Name=@cat10))
    insert into dbo.SrvCat(Srv, Cat) values((select Id from dbo.Srv where Name=@srv8), (select Id from Cat where Name=@cat10))
if not exists(select * from dbo.SrvCat where Srv = (select Id from dbo.Srv where Name=@srv8) and Cat=(select Id from Cat where Name=@cat11))
    insert into dbo.SrvCat(Srv, Cat) values((select Id from dbo.Srv where Name=@srv8), (select Id from Cat where Name=@cat11))
if not exists(select * from dbo.SrvCat where Srv = (select Id from dbo.Srv where Name=@srv8) and Cat=(select Id from Cat where Name=@cat14))
    insert into dbo.SrvCat(Srv, Cat) values((select Id from dbo.Srv where Name=@srv8), (select Id from Cat where Name=@cat14))
if not exists(select * from dbo.SrvCat where Srv = (select Id from dbo.Srv where Name=@srv8) and Cat=(select Id from Cat where Name=@cat15))
    insert into dbo.SrvCat(Srv, Cat) values((select Id from dbo.Srv where Name=@srv8), (select Id from Cat where Name=@cat15))
-- SelfService
if not exists(select * from dbo.SrvCat where Srv = (select Id from dbo.Srv where Name=@srv9) and Cat=(select Id from Cat where Name=@cat1))
    insert into dbo.SrvCat(Srv, Cat) values((select Id from dbo.Srv where Name=@srv9), (select Id from Cat where Name=@cat1))
if not exists(select * from dbo.SrvCat where Srv = (select Id from dbo.Srv where Name=@srv9) and Cat=(select Id from Cat where Name=@cat2))
    insert into dbo.SrvCat(Srv, Cat) values((select Id from dbo.Srv where Name=@srv9), (select Id from Cat where Name=@cat2))
if not exists(select * from dbo.SrvCat where Srv = (select Id from dbo.Srv where Name=@srv9) and Cat=(select Id from Cat where Name=@cat3))
    insert into dbo.SrvCat(Srv, Cat) values((select Id from dbo.Srv where Name=@srv9), (select Id from Cat where Name=@cat3))
if not exists(select * from dbo.SrvCat where Srv = (select Id from dbo.Srv where Name=@srv9) and Cat=(select Id from Cat where Name=@cat4))
    insert into dbo.SrvCat(Srv, Cat) values((select Id from dbo.Srv where Name=@srv9), (select Id from Cat where Name=@cat4))


------- for @srv1 (MSS Antispam) -----------
---- SrvSpamassasinCfg
if not exists(select * from dbo.SrvSpamassasinCfg where Srv=(select Id from Srv where Name=@srv1) and SpamassasinCfg=(select Id from SpamassasinCfg where Algorythm=@SpamassasinCfgAlgorythm))
    insert into dbo.SrvSpamassasinCfg(Srv, SpamassasinCfg) values((select Id from Srv where Name=@srv1), (select Id from SpamassasinCfg where Algorythm=@SpamassasinCfgAlgorythm));

------- for @srv2 (MSS Antispam + Antivir) -----------
---- SrvSpamassasinCfg
if not exists(select * from dbo.SrvSpamassasinCfg where Srv=(select Id from Srv where Name=@srv2) and SpamassasinCfg=(select Id from SpamassasinCfg where Algorythm=@SpamassasinCfgAlgorythm))
    insert into dbo.SrvSpamassasinCfg(Srv, SpamassasinCfg) values((select Id from Srv where Name=@srv2), (select Id from SpamassasinCfg where Algorythm=@SpamassasinCfgAlgorythm));
---- SrvClamavCfg
if not exists(select * from dbo.SrvClamavCfg where Srv=(select Id from Srv where Name=@srv2) and ClamavCfg=(select Id from ClamavCfg where Quarantine=@ClamavCfgQuarantine))
    insert into dbo.SrvClamavCfg(Srv, ClamavCfg) values((select Id from Srv where Name=@srv2), (select Id from ClamavCfg where Quarantine=@ClamavCfgQuarantine));

------- for @srv3 (MSS E-mail + Antivir + Antispam) -----------
---- SrvPostfixCfg
if not exists(select * from dbo.SrvPostfixCfg where Srv=(select Id from Srv where Name=@srv3) and PostfixCfg=(select Id from PostfixCfg where Domain=@PostfixCfgDomain))
    insert into dbo.SrvPostfixCfg(Srv, PostfixCfg) values((select Id from Srv where Name=@srv3), (select Id from PostfixCfg where Domain=@PostfixCfgDomain));
---- SrvClamavCfg
if not exists(select * from dbo.SrvClamavCfg where Srv=(select Id from Srv where Name=@srv3) and ClamavCfg=(select Id from ClamavCfg where Quarantine=@ClamavCfgQuarantine))
    insert into dbo.SrvClamavCfg(Srv, ClamavCfg) values((select Id from Srv where Name=@srv3), (select Id from ClamavCfg where Quarantine=@ClamavCfgQuarantine));
---- SrvSpamassasinCfg
if not exists(select * from dbo.SrvSpamassasinCfg where Srv=(select Id from Srv where Name=@srv3) and SpamassasinCfg=(select Id from SpamassasinCfg where Algorythm=@SpamassasinCfgAlgorythm))
    insert into dbo.SrvSpamassasinCfg(Srv, SpamassasinCfg) values((select Id from Srv where Name=@srv3), (select Id from SpamassasinCfg where Algorythm=@SpamassasinCfgAlgorythm));
---- SrvJabberCfg
if not exists(select * from dbo.SrvJabberCfg where Srv=(select Id from Srv where Name=@srv3) and JabberCfg=(select Id from JabberCfg where Protocol=@JabberCfgProtocol))
    insert into dbo.SrvJabberCfg(Srv, JabberCfg) values((select Id from Srv where Name=@srv3), (select Id from JabberCfg where Protocol=@JabberCfgProtocol));

------- for @srv4 (Antivirus) -----------
---- SrvPostfixCfg
if not exists(select * from dbo.SrvPostfixCfg where Srv=(select Id from Srv where Name=@srv4) and PostfixCfg=(select Id from PostfixCfg where Domain=@PostfixCfgDomain))
    insert into dbo.SrvPostfixCfg(Srv, PostfixCfg) values((select Id from Srv where Name=@srv4), (select Id from PostfixCfg where Domain=@PostfixCfgDomain));
---- SrvClamavCfg
if not exists(select * from dbo.SrvClamavCfg where Srv=(select Id from Srv where Name=@srv4) and ClamavCfg=(select Id from ClamavCfg where Quarantine=@ClamavCfgQuarantine))
    insert into dbo.SrvClamavCfg(Srv, ClamavCfg) values((select Id from Srv where Name=@srv4), (select Id from ClamavCfg where Quarantine=@ClamavCfgQuarantine));

------- for @srv5 (Antispam) -----------
---- SrvPostfixCfg
if not exists(select * from dbo.SrvPostfixCfg where Srv=(select Id from Srv where Name=@srv5) and PostfixCfg=(select Id from PostfixCfg where Domain=@PostfixCfgDomain))
    insert into dbo.SrvPostfixCfg(Srv, PostfixCfg) values((select Id from Srv where Name=@srv5), (select Id from PostfixCfg where Domain=@PostfixCfgDomain));
---- SrvSpamassasinCfg
if not exists(select * from dbo.SrvSpamassasinCfg where Srv=(select Id from Srv where Name=@srv5) and SpamassasinCfg=(select Id from SpamassasinCfg where Algorythm=@SpamassasinCfgAlgorythm))
    insert into dbo.SrvSpamassasinCfg(Srv, SpamassasinCfg) values((select Id from Srv where Name=@srv5), (select Id from SpamassasinCfg where Algorythm=@SpamassasinCfgAlgorythm));

------- for @srv6 (E-Mail) -----------
---- SrvPostfixCfg
if not exists(select * from dbo.SrvPostfixCfg where Srv=(select Id from Srv where Name=@srv6) and PostfixCfg=(select Id from PostfixCfg where Domain=@PostfixCfgDomain))
    insert into dbo.SrvPostfixCfg(Srv, PostfixCfg) values((select Id from Srv where Name=@srv6), (select Id from PostfixCfg where Domain=@PostfixCfgDomain));

------- for @srv7 (E-mail + Antivir + Antispam) -----------
---- SrvPostfixCfg
if not exists(select * from dbo.SrvPostfixCfg where Srv=(select Id from Srv where Name=@srv7) and PostfixCfg=(select Id from PostfixCfg where Domain=@PostfixCfgDomain))
    insert into dbo.SrvPostfixCfg(Srv, PostfixCfg) values((select Id from Srv where Name=@srv7), (select Id from PostfixCfg where Domain=@PostfixCfgDomain));
---- SrvClamavCfg
if not exists(select * from dbo.SrvClamavCfg where Srv=(select Id from Srv where Name=@srv7) and ClamavCfg=(select Id from ClamavCfg where Quarantine=@ClamavCfgQuarantine))
    insert into dbo.SrvClamavCfg(Srv, ClamavCfg) values((select Id from Srv where Name=@srv7), (select Id from ClamavCfg where Quarantine=@ClamavCfgQuarantine));
---- SrvSpamassasinCfg
if not exists(select * from dbo.SrvSpamassasinCfg where Srv=(select Id from Srv where Name=@srv7) and SpamassasinCfg=(select Id from SpamassasinCfg where Algorythm=@SpamassasinCfgAlgorythm))
    insert into dbo.SrvSpamassasinCfg(Srv, SpamassasinCfg) values((select Id from Srv where Name=@srv7), (select Id from SpamassasinCfg where Algorythm=@SpamassasinCfgAlgorythm));
---- SrvJabberCfg
if not exists(select * from dbo.SrvJabberCfg where Srv=(select Id from Srv where Name=@srv7) and JabberCfg=(select Id from JabberCfg where Protocol=@JabberCfgProtocol))
    insert into dbo.SrvJabberCfg(Srv, JabberCfg) values((select Id from Srv where Name=@srv7), (select Id from JabberCfg where Protocol=@JabberCfgProtocol));

------- for @srv8 (Antispam + Antivir) -----------
---- SrvPostfixCfg
if not exists(select * from dbo.SrvPostfixCfg where Srv=(select Id from Srv where Name=@srv8) and PostfixCfg=(select Id from PostfixCfg where Domain=@PostfixCfgDomain))
    insert into dbo.SrvPostfixCfg(Srv, PostfixCfg) values((select Id from Srv where Name=@srv8), (select Id from PostfixCfg where Domain=@PostfixCfgDomain));
---- SrvSpamassasinCfg
if not exists(select * from dbo.SrvSpamassasinCfg where Srv=(select Id from Srv where Name=@srv8) and SpamassasinCfg=(select Id from SpamassasinCfg where Algorythm=@SpamassasinCfgAlgorythm))
    insert into dbo.SrvSpamassasinCfg(Srv, SpamassasinCfg) values((select Id from Srv where Name=@srv8), (select Id from SpamassasinCfg where Algorythm=@SpamassasinCfgAlgorythm));
---- SrvClamavCfg
if not exists(select * from dbo.SrvClamavCfg where Srv=(select Id from Srv where Name=@srv8) and ClamavCfg=(select Id from ClamavCfg where Quarantine=@ClamavCfgQuarantine))
    insert into dbo.SrvClamavCfg(Srv, ClamavCfg) values((select Id from Srv where Name=@srv8), (select Id from ClamavCfg where Quarantine=@ClamavCfgQuarantine));

------- for @srv9 SelfService (E-mail + Antivir + Antispam + Jabber) -----------
---- SrvPostfixCfg
if not exists(select * from dbo.SrvPostfixCfg where Srv=(select Id from Srv where Name=@srv9) and PostfixCfg=(select Id from PostfixCfg where Domain=@PostfixCfgDomain))
    insert into dbo.SrvPostfixCfg(Srv, PostfixCfg) values((select Id from Srv where Name=@srv9), (select Id from PostfixCfg where Domain=@PostfixCfgDomain));
---- SrvClamavCfg
if not exists(select * from dbo.SrvClamavCfg where Srv=(select Id from Srv where Name=@srv9) and ClamavCfg=(select Id from ClamavCfg where Quarantine=@ClamavCfgQuarantine))
    insert into dbo.SrvClamavCfg(Srv, ClamavCfg) values((select Id from Srv where Name=@srv9), (select Id from ClamavCfg where Quarantine=@ClamavCfgQuarantine));
---- SrvSpamassasinCfg
if not exists(select * from dbo.SrvSpamassasinCfg where Srv=(select Id from Srv where Name=@srv9) and SpamassasinCfg=(select Id from SpamassasinCfg where Algorythm=@SpamassasinCfgAlgorythm))
    insert into dbo.SrvSpamassasinCfg(Srv, SpamassasinCfg) values((select Id from Srv where Name=@srv9), (select Id from SpamassasinCfg where Algorythm=@SpamassasinCfgAlgorythm));
---- SrvJabberCfg
if not exists(select * from dbo.SrvJabberCfg where Srv=(select Id from Srv where Name=@srv9) and JabberCfg=(select Id from JabberCfg where Protocol=@JabberCfgProtocol))
    insert into dbo.SrvJabberCfg(Srv, JabberCfg) values((select Id from Srv where Name=@srv9), (select Id from JabberCfg where Protocol=@JabberCfgProtocol));



-- Rol
-- MSS Main
if not exists(select * from dbo.Rol where Name = @roleMssMain0 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleMssMain0, 0, (select Id from dbo.Tnt where Name=@tnttest0))
if not exists(select * from dbo.Rol where Name = @roleMssMain1 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleMssMain1, 0, (select Id from dbo.Tnt where Name=@tnttest0))
if not exists(select * from dbo.Rol where Name = @roleMssMain2 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleMssMain2, 0, (select Id from dbo.Tnt where Name=@tnttest0))
if not exists(select * from dbo.Rol where Name = @roleMssMain3 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleMssMain3, 0, (select Id from dbo.Tnt where Name=@tnttest0))
if not exists(select * from dbo.Rol where Name = @roleMssMain4 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleMssMain4, 0, (select Id from dbo.Tnt where Name=@tnttest0))
if not exists(select * from dbo.Rol where Name = @roleMssMain5 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleMssMain5, 0, (select Id from dbo.Tnt where Name=@tnttest0))
if not exists(select * from dbo.Rol where Name = @roleMssMain6 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleMssMain6, 0, (select Id from dbo.Tnt where Name=@tnttest0))
if not exists(select * from dbo.Rol where Name = @roleMssMain7 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleMssMain7, 0, (select Id from dbo.Tnt where Name=@tnttest0))
if not exists(select * from dbo.Rol where Name = @roleMssMain8 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleMssMain8, 0, (select Id from dbo.Tnt where Name=@tnttest0))
if not exists(select * from dbo.Rol where Name = @roleMssMain9 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleMssMain9, 0, (select Id from dbo.Tnt where Name=@tnttest0))
if not exists(select * from dbo.Rol where Name = @roleMssMain10 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleMssMain10, 0, (select Id from dbo.Tnt where Name=@tnttest0))
if not exists(select * from dbo.Rol where Name = @roleMssMain11 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleMssMain11, 0, (select Id from dbo.Tnt where Name=@tnttest0))
if not exists(select * from dbo.Rol where Name = @roleMssMain12 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleMssMain12, 0, (select Id from dbo.Tnt where Name=@tnttest0))
if not exists(select * from dbo.Rol where Name = @roleMssMain13 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleMssMain13, 0, (select Id from dbo.Tnt where Name=@tnttest0))
if not exists(select * from dbo.Rol where Name = @roleMssMain14 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleMssMain14, 0, (select Id from dbo.Tnt where Name=@tnttest0))
if not exists(select * from dbo.Rol where Name = @roleMssMain15 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleMssMain15, 0, (select Id from dbo.Tnt where Name=@tnttest0))
if not exists(select * from dbo.Rol where Name = @roleMssMain16 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleMssMain16, 0, (select Id from dbo.Tnt where Name=@tnttest0))
if not exists(select * from dbo.Rol where Name = @roleMssMain17 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleMssMain17, 0, (select Id from dbo.Tnt where Name=@tnttest0))
-- Test Tenant
if not exists(select * from dbo.Rol where Name = @roleTestTenant0 and Tnt = (select Id from dbo.Tnt where Name=@tnttest1))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleTestTenant0, 0, (select Id from dbo.Tnt where Name=@tnttest1))
if not exists(select * from dbo.Rol where Name = @roleTestTenant1 and Tnt = (select Id from dbo.Tnt where Name=@tnttest1))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleTestTenant1, 0, (select Id from dbo.Tnt where Name=@tnttest1))
if not exists(select * from dbo.Rol where Name = @roleTestTenant2 and Tnt = (select Id from dbo.Tnt where Name=@tnttest1))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleTestTenant2, 0, (select Id from dbo.Tnt where Name=@tnttest1))
if not exists(select * from dbo.Rol where Name = @roleTestTenant3 and Tnt = (select Id from dbo.Tnt where Name=@tnttest1))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleTestTenant3, 0, (select Id from dbo.Tnt where Name=@tnttest1))
if not exists(select * from dbo.Rol where Name = @roleTestTenant4 and Tnt = (select Id from dbo.Tnt where Name=@tnttest1))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleTestTenant4, 0, (select Id from dbo.Tnt where Name=@tnttest1))
if not exists(select * from dbo.Rol where Name = @roleTestTenant5 and Tnt = (select Id from dbo.Tnt where Name=@tnttest1))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleTestTenant5, 0, (select Id from dbo.Tnt where Name=@tnttest1))
if not exists(select * from dbo.Rol where Name = @roleTestTenant6 and Tnt = (select Id from dbo.Tnt where Name=@tnttest1))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleTestTenant6, 0, (select Id from dbo.Tnt where Name=@tnttest1))
if not exists(select * from dbo.Rol where Name = @roleTestTenant7 and Tnt = (select Id from dbo.Tnt where Name=@tnttest1))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleTestTenant7, 0, (select Id from dbo.Tnt where Name=@tnttest1))
if not exists(select * from dbo.Rol where Name = @roleTestTenant8 and Tnt = (select Id from dbo.Tnt where Name=@tnttest1))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleTestTenant8, 0, (select Id from dbo.Tnt where Name=@tnttest1))
if not exists(select * from dbo.Rol where Name = @roleTestTenant9 and Tnt = (select Id from dbo.Tnt where Name=@tnttest1))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleTestTenant9, 0, (select Id from dbo.Tnt where Name=@tnttest1))
if not exists(select * from dbo.Rol where Name = @roleTestTenant10 and Tnt = (select Id from dbo.Tnt where Name=@tnttest1))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleTestTenant10, 0, (select Id from dbo.Tnt where Name=@tnttest1))
if not exists(select * from dbo.Rol where Name = @roleTestTenant11 and Tnt = (select Id from dbo.Tnt where Name=@tnttest1))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleTestTenant11, 0, (select Id from dbo.Tnt where Name=@tnttest1))
if not exists(select * from dbo.Rol where Name = @roleTestTenant12 and Tnt = (select Id from dbo.Tnt where Name=@tnttest1))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleTestTenant12, 0, (select Id from dbo.Tnt where Name=@tnttest1))
if not exists(select * from dbo.Rol where Name = @roleTestTenant13 and Tnt = (select Id from dbo.Tnt where Name=@tnttest1))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleTestTenant13, 0, (select Id from dbo.Tnt where Name=@tnttest1))
if not exists(select * from dbo.Rol where Name = @roleTestTenant14 and Tnt = (select Id from dbo.Tnt where Name=@tnttest1))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleTestTenant14, 0, (select Id from dbo.Tnt where Name=@tnttest1))
if not exists(select * from dbo.Rol where Name = @roleTestTenant15 and Tnt = (select Id from dbo.Tnt where Name=@tnttest1))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleTestTenant15, 0, (select Id from dbo.Tnt where Name=@tnttest1))
if not exists(select * from dbo.Rol where Name = @roleTestTenant16 and Tnt = (select Id from dbo.Tnt where Name=@tnttest1))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleTestTenant16, 0, (select Id from dbo.Tnt where Name=@tnttest1))
if not exists(select * from dbo.Rol where Name = @roleTestTenant17 and Tnt = (select Id from dbo.Tnt where Name=@tnttest1))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleTestTenant17, 0, (select Id from dbo.Tnt where Name=@tnttest1))
-- One More Tenant
if not exists(select * from dbo.Rol where Name = @roleOneMoreTenant0 and Tnt = (select Id from dbo.Tnt where Name=@tnttest2))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleOneMoreTenant0, 0, (select Id from dbo.Tnt where Name=@tnttest2))
if not exists(select * from dbo.Rol where Name = @roleOneMoreTenant1 and Tnt = (select Id from dbo.Tnt where Name=@tnttest2))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleOneMoreTenant1, 0, (select Id from dbo.Tnt where Name=@tnttest2))
if not exists(select * from dbo.Rol where Name = @roleOneMoreTenant2 and Tnt = (select Id from dbo.Tnt where Name=@tnttest2))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleOneMoreTenant2, 0, (select Id from dbo.Tnt where Name=@tnttest2))
if not exists(select * from dbo.Rol where Name = @roleOneMoreTenant3 and Tnt = (select Id from dbo.Tnt where Name=@tnttest2))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleOneMoreTenant3, 0, (select Id from dbo.Tnt where Name=@tnttest2))
if not exists(select * from dbo.Rol where Name = @roleOneMoreTenant4 and Tnt = (select Id from dbo.Tnt where Name=@tnttest2))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleOneMoreTenant4, 0, (select Id from dbo.Tnt where Name=@tnttest2))
if not exists(select * from dbo.Rol where Name = @roleOneMoreTenant5 and Tnt = (select Id from dbo.Tnt where Name=@tnttest2))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleOneMoreTenant5, 0, (select Id from dbo.Tnt where Name=@tnttest2))
if not exists(select * from dbo.Rol where Name = @roleOneMoreTenant6 and Tnt = (select Id from dbo.Tnt where Name=@tnttest2))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleOneMoreTenant6, 0, (select Id from dbo.Tnt where Name=@tnttest2))
if not exists(select * from dbo.Rol where Name = @roleOneMoreTenant7 and Tnt = (select Id from dbo.Tnt where Name=@tnttest2))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleOneMoreTenant7, 0, (select Id from dbo.Tnt where Name=@tnttest2))
if not exists(select * from dbo.Rol where Name = @roleOneMoreTenant8 and Tnt = (select Id from dbo.Tnt where Name=@tnttest2))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleOneMoreTenant8, 0, (select Id from dbo.Tnt where Name=@tnttest2))
if not exists(select * from dbo.Rol where Name = @roleOneMoreTenant9 and Tnt = (select Id from dbo.Tnt where Name=@tnttest2))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleOneMoreTenant9, 0, (select Id from dbo.Tnt where Name=@tnttest2))
if not exists(select * from dbo.Rol where Name = @roleOneMoreTenant10 and Tnt = (select Id from dbo.Tnt where Name=@tnttest2))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleOneMoreTenant10, 0, (select Id from dbo.Tnt where Name=@tnttest2))
if not exists(select * from dbo.Rol where Name = @roleOneMoreTenant11 and Tnt = (select Id from dbo.Tnt where Name=@tnttest2))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleOneMoreTenant11, 0, (select Id from dbo.Tnt where Name=@tnttest2))
if not exists(select * from dbo.Rol where Name = @roleOneMoreTenant12 and Tnt = (select Id from dbo.Tnt where Name=@tnttest2))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleOneMoreTenant12, 0, (select Id from dbo.Tnt where Name=@tnttest2))
if not exists(select * from dbo.Rol where Name = @roleOneMoreTenant13 and Tnt = (select Id from dbo.Tnt where Name=@tnttest2))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleOneMoreTenant13, 0, (select Id from dbo.Tnt where Name=@tnttest2))
if not exists(select * from dbo.Rol where Name = @roleOneMoreTenant14 and Tnt = (select Id from dbo.Tnt where Name=@tnttest2))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleOneMoreTenant14, 0, (select Id from dbo.Tnt where Name=@tnttest2))
if not exists(select * from dbo.Rol where Name = @roleOneMoreTenant15 and Tnt = (select Id from dbo.Tnt where Name=@tnttest2))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleOneMoreTenant15, 0, (select Id from dbo.Tnt where Name=@tnttest2))
if not exists(select * from dbo.Rol where Name = @roleOneMoreTenant16 and Tnt = (select Id from dbo.Tnt where Name=@tnttest2))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleOneMoreTenant16, 0, (select Id from dbo.Tnt where Name=@tnttest2))
if not exists(select * from dbo.Rol where Name = @roleOneMoreTenant17 and Tnt = (select Id from dbo.Tnt where Name=@tnttest2))
    insert into dbo.Rol(Name, IsDel, Tnt) values(@roleOneMoreTenant17, 0, (select Id from dbo.Tnt where Name=@tnttest2))


-- UsrRol
--@deflogin2 -> @tnttest0
if not exists(select * from dbo.UsrRol where Usr = (select Id from Usr where ULogin=@deflogin2) and Rol = (select Id from Rol where Name=@roleMssMain0 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0)))
    insert into dbo.UsrRol(Rol, Usr) values((select Id from Rol where Name=@roleMssMain0 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0)), (select Id from Usr where ULogin=@deflogin2));
if not exists(select * from dbo.UsrRol where Usr = (select Id from Usr where ULogin=@deflogin2) and Rol = (select Id from Rol where Name=@roleMssMain1 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0)))
    insert into dbo.UsrRol(Rol, Usr) values((select Id from Rol where Name=@roleMssMain1 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0)), (select Id from Usr where ULogin=@deflogin2));
if not exists(select * from dbo.UsrRol where Usr = (select Id from Usr where ULogin=@deflogin2) and Rol = (select Id from Rol where Name=@roleMssMain2 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0)))
    insert into dbo.UsrRol(Rol, Usr) values((select Id from Rol where Name=@roleMssMain2 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0)), (select Id from Usr where ULogin=@deflogin2));
if not exists(select * from dbo.UsrRol where Usr = (select Id from Usr where ULogin=@deflogin2) and Rol = (select Id from Rol where Name=@roleMssMain3 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0)))
    insert into dbo.UsrRol(Rol, Usr) values((select Id from Rol where Name=@roleMssMain3 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0)), (select Id from Usr where ULogin=@deflogin2));
if not exists(select * from dbo.UsrRol where Usr = (select Id from Usr where ULogin=@deflogin2) and Rol = (select Id from Rol where Name=@roleMssMain4 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0)))
    insert into dbo.UsrRol(Rol, Usr) values((select Id from Rol where Name=@roleMssMain4 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0)), (select Id from Usr where ULogin=@deflogin2));
if not exists(select * from dbo.UsrRol where Usr = (select Id from Usr where ULogin=@deflogin2) and Rol = (select Id from Rol where Name=@roleMssMain5 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0)))
    insert into dbo.UsrRol(Rol, Usr) values((select Id from Rol where Name=@roleMssMain5 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0)), (select Id from Usr where ULogin=@deflogin2));
if not exists(select * from dbo.UsrRol where Usr = (select Id from Usr where ULogin=@deflogin2) and Rol = (select Id from Rol where Name=@roleMssMain6 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0)))
    insert into dbo.UsrRol(Rol, Usr) values((select Id from Rol where Name=@roleMssMain6 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0)), (select Id from Usr where ULogin=@deflogin2));
if not exists(select * from dbo.UsrRol where Usr = (select Id from Usr where ULogin=@deflogin2) and Rol = (select Id from Rol where Name=@roleMssMain7 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0)))
    insert into dbo.UsrRol(Rol, Usr) values((select Id from Rol where Name=@roleMssMain7 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0)), (select Id from Usr where ULogin=@deflogin2));
if not exists(select * from dbo.UsrRol where Usr = (select Id from Usr where ULogin=@deflogin2) and Rol = (select Id from Rol where Name=@roleMssMain8 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0)))
    insert into dbo.UsrRol(Rol, Usr) values((select Id from Rol where Name=@roleMssMain8 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0)), (select Id from Usr where ULogin=@deflogin2));
if not exists(select * from dbo.UsrRol where Usr = (select Id from Usr where ULogin=@deflogin2) and Rol = (select Id from Rol where Name=@roleMssMain9 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0)))
    insert into dbo.UsrRol(Rol, Usr) values((select Id from Rol where Name=@roleMssMain9 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0)), (select Id from Usr where ULogin=@deflogin2));
if not exists(select * from dbo.UsrRol where Usr = (select Id from Usr where ULogin=@deflogin2) and Rol = (select Id from Rol where Name=@roleMssMain10 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0)))
    insert into dbo.UsrRol(Rol, Usr) values((select Id from Rol where Name=@roleMssMain10 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0)), (select Id from Usr where ULogin=@deflogin2));
if not exists(select * from dbo.UsrRol where Usr = (select Id from Usr where ULogin=@deflogin2) and Rol = (select Id from Rol where Name=@roleMssMain11 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0)))
    insert into dbo.UsrRol(Rol, Usr) values((select Id from Rol where Name=@roleMssMain11 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0)), (select Id from Usr where ULogin=@deflogin2));
if not exists(select * from dbo.UsrRol where Usr = (select Id from Usr where ULogin=@deflogin2) and Rol = (select Id from Rol where Name=@roleMssMain12 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0)))
    insert into dbo.UsrRol(Rol, Usr) values((select Id from Rol where Name=@roleMssMain12 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0)), (select Id from Usr where ULogin=@deflogin2));
if not exists(select * from dbo.UsrRol where Usr = (select Id from Usr where ULogin=@deflogin2) and Rol = (select Id from Rol where Name=@roleMssMain13 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0)))
    insert into dbo.UsrRol(Rol, Usr) values((select Id from Rol where Name=@roleMssMain13 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0)), (select Id from Usr where ULogin=@deflogin2));
if not exists(select * from dbo.UsrRol where Usr = (select Id from Usr where ULogin=@deflogin2) and Rol = (select Id from Rol where Name=@roleMssMain14 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0)))
    insert into dbo.UsrRol(Rol, Usr) values((select Id from Rol where Name=@roleMssMain14 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0)), (select Id from Usr where ULogin=@deflogin2));
if not exists(select * from dbo.UsrRol where Usr = (select Id from Usr where ULogin=@deflogin2) and Rol = (select Id from Rol where Name=@roleMssMain15 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0)))
    insert into dbo.UsrRol(Rol, Usr) values((select Id from Rol where Name=@roleMssMain15 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0)), (select Id from Usr where ULogin=@deflogin2));
if not exists(select * from dbo.UsrRol where Usr = (select Id from Usr where ULogin=@deflogin2) and Rol = (select Id from Rol where Name=@roleMssMain16 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0)))
    insert into dbo.UsrRol(Rol, Usr) values((select Id from Rol where Name=@roleMssMain16 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0)), (select Id from Usr where ULogin=@deflogin2));
if not exists(select * from dbo.UsrRol where Usr = (select Id from Usr where ULogin=@deflogin2) and Rol = (select Id from Rol where Name=@roleMssMain17 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0)))
    insert into dbo.UsrRol(Rol, Usr) values((select Id from Rol where Name=@roleMssMain17 and Tnt = (select Id from dbo.Tnt where Name=@tnttest0)), (select Id from Usr where ULogin=@deflogin2));
--@deflogin2 -> @tnttest1
if not exists(select * from dbo.UsrRol where Usr = (select Id from Usr where ULogin=@deflogin2) and Rol = (select Id from Rol where Name=@roleTestTenant0 and Tnt = (select Id from dbo.Tnt where Name=@tnttest1)))
    insert into dbo.UsrRol(Rol, Usr) values((select Id from Rol where Name=@roleTestTenant0 and Tnt = (select Id from dbo.Tnt where Name=@tnttest1)), (select Id from Usr where ULogin=@deflogin2));
if not exists(select * from dbo.UsrRol where Usr = (select Id from Usr where ULogin=@deflogin2) and Rol = (select Id from Rol where Name=@roleTestTenant11 and Tnt = (select Id from dbo.Tnt where Name=@tnttest1)))
    insert into dbo.UsrRol(Rol, Usr) values((select Id from Rol where Name=@roleTestTenant11 and Tnt = (select Id from dbo.Tnt where Name=@tnttest1)), (select Id from Usr where ULogin=@deflogin2));
if not exists(select * from dbo.UsrRol where Usr = (select Id from Usr where ULogin=@deflogin2) and Rol = (select Id from Rol where Name=@roleTestTenant12 and Tnt = (select Id from dbo.Tnt where Name=@tnttest1)))
    insert into dbo.UsrRol(Rol, Usr) values((select Id from Rol where Name=@roleTestTenant12 and Tnt = (select Id from dbo.Tnt where Name=@tnttest1)), (select Id from Usr where ULogin=@deflogin2));
if not exists(select * from dbo.UsrRol where Usr = (select Id from Usr where ULogin=@deflogin2) and Rol = (select Id from Rol where Name=@roleTestTenant13 and Tnt = (select Id from dbo.Tnt where Name=@tnttest1)))
    insert into dbo.UsrRol(Rol, Usr) values((select Id from Rol where Name=@roleTestTenant13 and Tnt = (select Id from dbo.Tnt where Name=@tnttest1)), (select Id from Usr where ULogin=@deflogin2));
--@deflogin3 -> @tnttest1
if not exists(select * from dbo.UsrRol where Usr = (select Id from Usr where ULogin=@deflogin3) and Rol = (select Id from Rol where Name=@roleTestTenant0 and Tnt = (select Id from dbo.Tnt where Name=@tnttest1)))
    insert into dbo.UsrRol(Rol, Usr) values((select Id from Rol where Name=@roleTestTenant0 and Tnt = (select Id from dbo.Tnt where Name=@tnttest1)), (select Id from Usr where ULogin=@deflogin3));
if not exists(select * from dbo.UsrRol where Usr = (select Id from Usr where ULogin=@deflogin3) and Rol = (select Id from Rol where Name=@roleTestTenant1 and Tnt = (select Id from dbo.Tnt where Name=@tnttest1)))
    insert into dbo.UsrRol(Rol, Usr) values((select Id from Rol where Name=@roleTestTenant1 and Tnt = (select Id from dbo.Tnt where Name=@tnttest1)), (select Id from Usr where ULogin=@deflogin3));
if not exists(select * from dbo.UsrRol where Usr = (select Id from Usr where ULogin=@deflogin3) and Rol = (select Id from Rol where Name=@roleTestTenant2 and Tnt = (select Id from dbo.Tnt where Name=@tnttest1)))
    insert into dbo.UsrRol(Rol, Usr) values((select Id from Rol where Name=@roleTestTenant2 and Tnt = (select Id from dbo.Tnt where Name=@tnttest1)), (select Id from Usr where ULogin=@deflogin3));
if not exists(select * from dbo.UsrRol where Usr = (select Id from Usr where ULogin=@deflogin3) and Rol = (select Id from Rol where Name=@roleTestTenant7 and Tnt = (select Id from dbo.Tnt where Name=@tnttest1)))
    insert into dbo.UsrRol(Rol, Usr) values((select Id from Rol where Name=@roleTestTenant7 and Tnt = (select Id from dbo.Tnt where Name=@tnttest1)), (select Id from Usr where ULogin=@deflogin3));
if not exists(select * from dbo.UsrRol where Usr = (select Id from Usr where ULogin=@deflogin3) and Rol = (select Id from Rol where Name=@roleTestTenant10 and Tnt = (select Id from dbo.Tnt where Name=@tnttest1)))
    insert into dbo.UsrRol(Rol, Usr) values((select Id from Rol where Name=@roleTestTenant10 and Tnt = (select Id from dbo.Tnt where Name=@tnttest1)), (select Id from Usr where ULogin=@deflogin3));
if not exists(select * from dbo.UsrRol where Usr = (select Id from Usr where ULogin=@deflogin3) and Rol = (select Id from Rol where Name=@roleTestTenant11 and Tnt = (select Id from dbo.Tnt where Name=@tnttest1)))
    insert into dbo.UsrRol(Rol, Usr) values((select Id from Rol where Name=@roleTestTenant11 and Tnt = (select Id from dbo.Tnt where Name=@tnttest1)), (select Id from Usr where ULogin=@deflogin3));
--@deflogin3 -> @tnttest2
if not exists(select * from dbo.UsrRol where Usr = (select Id from Usr where ULogin=@deflogin3) and Rol = (select Id from Rol where Name=@roleOneMoreTenant0 and Tnt = (select Id from dbo.Tnt where Name=@tnttest2)))
    insert into dbo.UsrRol(Rol, Usr) values((select Id from Rol where Name=@roleOneMoreTenant0 and Tnt = (select Id from dbo.Tnt where Name=@tnttest2)), (select Id from Usr where ULogin=@deflogin3));
if not exists(select * from dbo.UsrRol where Usr = (select Id from Usr where ULogin=@deflogin3) and Rol = (select Id from Rol where Name=@roleOneMoreTenant1 and Tnt = (select Id from dbo.Tnt where Name=@tnttest2)))
    insert into dbo.UsrRol(Rol, Usr) values((select Id from Rol where Name=@roleOneMoreTenant1 and Tnt = (select Id from dbo.Tnt where Name=@tnttest2)), (select Id from Usr where ULogin=@deflogin3));
if not exists(select * from dbo.UsrRol where Usr = (select Id from Usr where ULogin=@deflogin3) and Rol = (select Id from Rol where Name=@roleOneMoreTenant3 and Tnt = (select Id from dbo.Tnt where Name=@tnttest2)))
    insert into dbo.UsrRol(Rol, Usr) values((select Id from Rol where Name=@roleOneMoreTenant3 and Tnt = (select Id from dbo.Tnt where Name=@tnttest2)), (select Id from Usr where ULogin=@deflogin3));
if not exists(select * from dbo.UsrRol where Usr = (select Id from Usr where ULogin=@deflogin3) and Rol = (select Id from Rol where Name=@roleOneMoreTenant5 and Tnt = (select Id from dbo.Tnt where Name=@tnttest2)))
    insert into dbo.UsrRol(Rol, Usr) values((select Id from Rol where Name=@roleOneMoreTenant5 and Tnt = (select Id from dbo.Tnt where Name=@tnttest2)), (select Id from Usr where ULogin=@deflogin3));
if not exists(select * from dbo.UsrRol where Usr = (select Id from Usr where ULogin=@deflogin3) and Rol = (select Id from Rol where Name=@roleOneMoreTenant7 and Tnt = (select Id from dbo.Tnt where Name=@tnttest2)))
    insert into dbo.UsrRol(Rol, Usr) values((select Id from Rol where Name=@roleOneMoreTenant7 and Tnt = (select Id from dbo.Tnt where Name=@tnttest2)), (select Id from Usr where ULogin=@deflogin3));
if not exists(select * from dbo.UsrRol where Usr = (select Id from Usr where ULogin=@deflogin3) and Rol = (select Id from Rol where Name=@roleOneMoreTenant9 and Tnt = (select Id from dbo.Tnt where Name=@tnttest2)))
    insert into dbo.UsrRol(Rol, Usr) values((select Id from Rol where Name=@roleOneMoreTenant9 and Tnt = (select Id from dbo.Tnt where Name=@tnttest2)), (select Id from Usr where ULogin=@deflogin3));
if not exists(select * from dbo.UsrRol where Usr = (select Id from Usr where ULogin=@deflogin3) and Rol = (select Id from Rol where Name=@roleOneMoreTenant11 and Tnt = (select Id from dbo.Tnt where Name=@tnttest2)))
    insert into dbo.UsrRol(Rol, Usr) values((select Id from Rol where Name=@roleOneMoreTenant11 and Tnt = (select Id from dbo.Tnt where Name=@tnttest2)), (select Id from Usr where ULogin=@deflogin3));
if not exists(select * from dbo.UsrRol where Usr = (select Id from Usr where ULogin=@deflogin3) and Rol = (select Id from Rol where Name=@roleOneMoreTenant13 and Tnt = (select Id from dbo.Tnt where Name=@tnttest2)))
    insert into dbo.UsrRol(Rol, Usr) values((select Id from Rol where Name=@roleOneMoreTenant13 and Tnt = (select Id from dbo.Tnt where Name=@tnttest2)), (select Id from Usr where ULogin=@deflogin3));
--@deflogin4 -> @tnttest1
if not exists(select * from dbo.UsrRol where Usr = (select Id from Usr where ULogin=@deflogin4) and Rol = (select Id from Rol where Name=@roleTestTenant0 and Tnt = (select Id from dbo.Tnt where Name=@tnttest1)))
    insert into dbo.UsrRol(Rol, Usr) values((select Id from Rol where Name=@roleTestTenant0 and Tnt = (select Id from dbo.Tnt where Name=@tnttest1)), (select Id from Usr where ULogin=@deflogin4));
if not exists(select * from dbo.UsrRol where Usr = (select Id from Usr where ULogin=@deflogin4) and Rol = (select Id from Rol where Name=@roleTestTenant11 and Tnt = (select Id from dbo.Tnt where Name=@tnttest1)))
    insert into dbo.UsrRol(Rol, Usr) values((select Id from Rol where Name=@roleTestTenant11 and Tnt = (select Id from dbo.Tnt where Name=@tnttest1)), (select Id from Usr where ULogin=@deflogin4));
if not exists(select * from dbo.UsrRol where Usr = (select Id from Usr where ULogin=@deflogin4) and Rol = (select Id from Rol where Name=@roleTestTenant12 and Tnt = (select Id from dbo.Tnt where Name=@tnttest1)))
    insert into dbo.UsrRol(Rol, Usr) values((select Id from Rol where Name=@roleTestTenant12 and Tnt = (select Id from dbo.Tnt where Name=@tnttest1)), (select Id from Usr where ULogin=@deflogin4));
if not exists(select * from dbo.UsrRol where Usr = (select Id from Usr where ULogin=@deflogin4) and Rol = (select Id from Rol where Name=@roleTestTenant13 and Tnt = (select Id from dbo.Tnt where Name=@tnttest1)))
    insert into dbo.UsrRol(Rol, Usr) values((select Id from Rol where Name=@roleTestTenant13 and Tnt = (select Id from dbo.Tnt where Name=@tnttest1)), (select Id from Usr where ULogin=@deflogin4));
--@deflogin5 -> @tnttest2
if not exists(select * from dbo.UsrRol where Usr = (select Id from Usr where ULogin=@deflogin5) and Rol = (select Id from Rol where Name=@roleOneMoreTenant0 and Tnt = (select Id from dbo.Tnt where Name=@tnttest2)))
    insert into dbo.UsrRol(Rol, Usr) values((select Id from Rol where Name=@roleOneMoreTenant0 and Tnt = (select Id from dbo.Tnt where Name=@tnttest2)), (select Id from Usr where ULogin=@deflogin5));
if not exists(select * from dbo.UsrRol where Usr = (select Id from Usr where ULogin=@deflogin5) and Rol = (select Id from Rol where Name=@roleOneMoreTenant8 and Tnt = (select Id from dbo.Tnt where Name=@tnttest2)))
    insert into dbo.UsrRol(Rol, Usr) values((select Id from Rol where Name=@roleOneMoreTenant8 and Tnt = (select Id from dbo.Tnt where Name=@tnttest2)), (select Id from Usr where ULogin=@deflogin5));


-- Flw
if not exists(select * from Flw where Name=@flw1)
	insert into Flw(Name, IsDel, IsDisabled, IsSupport, Comment) values(@flw1, 0, 0, 0, 'This is wonderful flow intended for doing everything and everywhere for everyone')
if not exists(select * from Flw where Name=@flw2)
	insert into Flw(Name, IsDel, IsDisabled, IsSupport, Comment) values(@flw2, 0, 0, 1, 'Another super flow like super hero can "make good" everytime in all situations. It also can be used for reducing taxes')

-- CatFlw
if not exists(select * from CatFlw where Cat=(select Id from Cat where Name=@cat19) and Flw=(select Id from Flw where Name=@flw1))
	insert into CatFlw(Cat, Flw) values((select Id from Cat where Name=@cat19), (select Id from Flw where Name=@flw1))
if not exists(select * from CatFlw where Cat=(select Id from Cat where Name=@cat13) and Flw=(select Id from Flw where Name=@flw2))
	insert into CatFlw(Cat, Flw) values((select Id from Cat where Name=@cat13), (select Id from Flw where Name=@flw2))
if not exists(select * from CatFlw where Cat=(select Id from Cat where Name=@cat20) and Flw=(select Id from Flw where Name=@flw2))
	insert into CatFlw(Cat, Flw) values((select Id from Cat where Name=@cat20), (select Id from Flw where Name=@flw2))


-- UsrTeam
if not exists(select * from UsrTeam where Usr=(select Id from Usr where ULogin=@deflogin1) and Team=(select Id from Team where Name=@team1))
	insert into UsrTeam(Usr, Team) values((select Id from Usr where ULogin=@deflogin1), (select Id from Team where Name=@team1))

if not exists(select * from UsrTeam where Usr=(select Id from Usr where ULogin=@deflogin2) and Team=(select Id from Team where Name=@team1))
	insert into UsrTeam(Usr, Team) values((select Id from Usr where ULogin=@deflogin2), (select Id from Team where Name=@team1))
if not exists(select * from UsrTeam where Usr=(select Id from Usr where ULogin=@deflogin2) and Team=(select Id from Team where Name=@team2))
	insert into UsrTeam(Usr, Team) values((select Id from Usr where ULogin=@deflogin2), (select Id from Team where Name=@team2))
if not exists(select * from UsrTeam where Usr=(select Id from Usr where ULogin=@deflogin2) and Team=(select Id from Team where Name=@team3))
	insert into UsrTeam(Usr, Team) values((select Id from Usr where ULogin=@deflogin2), (select Id from Team where Name=@team3))
if not exists(select * from UsrTeam where Usr=(select Id from Usr where ULogin=@deflogin2) and Team=(select Id from Team where Name=@team4))
	insert into UsrTeam(Usr, Team) values((select Id from Usr where ULogin=@deflogin2), (select Id from Team where Name=@team4))
if not exists(select * from UsrTeam where Usr=(select Id from Usr where ULogin=@deflogin2) and Team=(select Id from Team where Name=@team5))
	insert into UsrTeam(Usr, Team) values((select Id from Usr where ULogin=@deflogin2), (select Id from Team where Name=@team5))
if not exists(select * from UsrTeam where Usr=(select Id from Usr where ULogin=@deflogin2) and Team=(select Id from Team where Name=@team6))
	insert into UsrTeam(Usr, Team) values((select Id from Usr where ULogin=@deflogin2), (select Id from Team where Name=@team6))


-------- RolCat ----------------
-- MSS Main
-- Email report Viewer
if not exists(select * from RolCat where Rol=(select Id from Rol where Name=@roleMssMain1 and Tnt=(select Id from Tnt where Name=@tnttest0)) and Cat=(select Id from cat where Name=@cat20))
	insert into Rolcat(Rol, Cat) values((select Id from Rol where Name=@roleMssMain1 and Tnt=(select Id from Tnt where Name=@tnttest0)), (select Id from cat where Name=@cat20))
-- Antivirus Report Viewer
if not exists(select * from RolCat where Rol=(select Id from Rol where Name=@roleMssMain2 and Tnt=(select Id from Tnt where Name=@tnttest0)) and Cat=(select Id from cat where Name=@cat18))
	insert into Rolcat(Rol, Cat) values((select Id from Rol where Name=@roleMssMain2 and Tnt=(select Id from Tnt where Name=@tnttest0)), (select Id from cat where Name=@cat18))
-- Antispam report Viewver
if not exists(select * from RolCat where Rol=(select Id from Rol where Name=@roleMssMain3 and Tnt=(select Id from Tnt where Name=@tnttest0)) and Cat=(select Id from cat where Name=@cat19))
	insert into Rolcat(Rol, Cat) values((select Id from Rol where Name=@roleMssMain3 and Tnt=(select Id from Tnt where Name=@tnttest0)), (select Id from cat where Name=@cat19))
-- IM Report Viewver
if not exists(select * from RolCat where Rol=(select Id from Rol where Name=@roleMssMain4 and Tnt=(select Id from Tnt where Name=@tnttest0)) and Cat=(select Id from cat where Name=@cat17))
	insert into Rolcat(Rol, Cat) values((select Id from Rol where Name=@roleMssMain4 and Tnt=(select Id from Tnt where Name=@tnttest0)), (select Id from cat where Name=@cat17))
-- Developer
if not exists(select * from RolCat where Rol=(select Id from Rol where Name=@roleMssMain5 and Tnt=(select Id from Tnt where Name=@tnttest0)) and Cat=(select Id from cat where Name=@cat27))
	insert into Rolcat(Rol, Cat) values((select Id from Rol where Name=@roleMssMain5 and Tnt=(select Id from Tnt where Name=@tnttest0)), (select Id from cat where Name=@cat27))
if not exists(select * from RolCat where Rol=(select Id from Rol where Name=@roleMssMain5 and Tnt=(select Id from Tnt where Name=@tnttest0)) and Cat=(select Id from cat where Name=@cat28))
	insert into Rolcat(Rol, Cat) values((select Id from Rol where Name=@roleMssMain5 and Tnt=(select Id from Tnt where Name=@tnttest0)), (select Id from cat where Name=@cat28))
-- Script Developer
if not exists(select * from RolCat where Rol=(select Id from Rol where Name=@roleMssMain6 and Tnt=(select Id from Tnt where Name=@tnttest0)) and Cat=(select Id from cat where Name=@cat29))
	insert into Rolcat(Rol, Cat) values((select Id from Rol where Name=@roleMssMain6 and Tnt=(select Id from Tnt where Name=@tnttest0)), (select Id from cat where Name=@cat29))
if not exists(select * from RolCat where Rol=(select Id from Rol where Name=@roleMssMain6 and Tnt=(select Id from Tnt where Name=@tnttest0)) and Cat=(select Id from cat where Name=@cat30))
	insert into Rolcat(Rol, Cat) values((select Id from Rol where Name=@roleMssMain6 and Tnt=(select Id from Tnt where Name=@tnttest0)), (select Id from cat where Name=@cat30))
-- Tenant Service Editor
if not exists(select * from RolCat where Rol=(select Id from Rol where Name=@roleMssMain7 and Tnt=(select Id from Tnt where Name=@tnttest0)) and Cat=(select Id from cat where Name=@cat25))
	insert into Rolcat(Rol, Cat) values((select Id from Rol where Name=@roleMssMain7 and Tnt=(select Id from Tnt where Name=@tnttest0)), (select Id from cat where Name=@cat25))
-- Tenant Service Viewer
if not exists(select * from RolCat where Rol=(select Id from Rol where Name=@roleMssMain8 and Tnt=(select Id from Tnt where Name=@tnttest0)) and Cat=(select Id from cat where Name=@cat26))
	insert into Rolcat(Rol, Cat) values((select Id from Rol where Name=@roleMssMain8 and Tnt=(select Id from Tnt where Name=@tnttest0)), (select Id from cat where Name=@cat26))
-- Tenant Report Viewer
if not exists(select * from RolCat where Rol=(select Id from Rol where Name=@roleMssMain8 and Tnt=(select Id from Tnt where Name=@tnttest0)) and Cat=(select Id from cat where Name=@cat17))
	insert into Rolcat(Rol, Cat) values((select Id from Rol where Name=@roleMssMain8 and Tnt=(select Id from Tnt where Name=@tnttest0)), (select Id from cat where Name=@cat17))
if not exists(select * from RolCat where Rol=(select Id from Rol where Name=@roleMssMain8 and Tnt=(select Id from Tnt where Name=@tnttest0)) and Cat=(select Id from cat where Name=@cat18))
	insert into Rolcat(Rol, Cat) values((select Id from Rol where Name=@roleMssMain8 and Tnt=(select Id from Tnt where Name=@tnttest0)), (select Id from cat where Name=@cat18))
if not exists(select * from RolCat where Rol=(select Id from Rol where Name=@roleMssMain8 and Tnt=(select Id from Tnt where Name=@tnttest0)) and Cat=(select Id from cat where Name=@cat19))
	insert into Rolcat(Rol, Cat) values((select Id from Rol where Name=@roleMssMain8 and Tnt=(select Id from Tnt where Name=@tnttest0)), (select Id from cat where Name=@cat19))
if not exists(select * from RolCat where Rol=(select Id from Rol where Name=@roleMssMain9 and Tnt=(select Id from Tnt where Name=@tnttest0)) and Cat=(select Id from cat where Name=@cat26))
	insert into Rolcat(Rol, Cat) values((select Id from Rol where Name=@roleMssMain9 and Tnt=(select Id from Tnt where Name=@tnttest0)), (select Id from cat where Name=@cat26))
-- Antivirus Configurator
if not exists(select * from RolCat where Rol=(select Id from Rol where Name=@roleMssMain10 and Tnt=(select Id from Tnt where Name=@tnttest0)) and Cat=(select Id from cat where Name=@cat22))
	insert into Rolcat(Rol, Cat) values((select Id from Rol where Name=@roleMssMain10 and Tnt=(select Id from Tnt where Name=@tnttest0)), (select Id from cat where Name=@cat22))
-- Antispam Configurator
if not exists(select * from RolCat where Rol=(select Id from Rol where Name=@roleMssMain11 and Tnt=(select Id from Tnt where Name=@tnttest0)) and Cat=(select Id from cat where Name=@cat23))
	insert into Rolcat(Rol, Cat) values((select Id from Rol where Name=@roleMssMain11 and Tnt=(select Id from Tnt where Name=@tnttest0)), (select Id from cat where Name=@cat23))
-- IM Configurator
if not exists(select * from RolCat where Rol=(select Id from Rol where Name=@roleMssMain12 and Tnt=(select Id from Tnt where Name=@tnttest0)) and Cat=(select Id from cat where Name=@cat24))
	insert into Rolcat(Rol, Cat) values((select Id from Rol where Name=@roleMssMain12 and Tnt=(select Id from Tnt where Name=@tnttest0)), (select Id from cat where Name=@cat24))
-- Email Configurator
if not exists(select * from RolCat where Rol=(select Id from Rol where Name=@roleMssMain13 and Tnt=(select Id from Tnt where Name=@tnttest0)) and Cat=(select Id from cat where Name=@cat21))
	insert into Rolcat(Rol, Cat) values((select Id from Rol where Name=@roleMssMain13 and Tnt=(select Id from Tnt where Name=@tnttest0)), (select Id from cat where Name=@cat21))

-- Test Tenant
if not exists(select * from RolCat where Rol=(select Id from Rol where Name=@roleTestTenant1 and Tnt=(select Id from Tnt where Name=@tnttest1)) and Cat=(select Id from cat where Name=@cat12))
	insert into Rolcat(Rol, Cat) values((select Id from Rol where Name=@roleTestTenant1 and Tnt=(select Id from Tnt where Name=@tnttest1)), (select Id from cat where Name=@cat12))
if not exists(select * from RolCat where Rol=(select Id from Rol where Name=@roleTestTenant2 and Tnt=(select Id from Tnt where Name=@tnttest1)) and Cat=(select Id from cat where Name=@cat10))
	insert into Rolcat(Rol, Cat) values((select Id from Rol where Name=@roleTestTenant2 and Tnt=(select Id from Tnt where Name=@tnttest1)), (select Id from cat where Name=@cat10))
if not exists(select * from RolCat where Rol=(select Id from Rol where Name=@roleTestTenant3 and Tnt=(select Id from Tnt where Name=@tnttest1)) and Cat=(select Id from cat where Name=@cat11))
	insert into Rolcat(Rol, Cat) values((select Id from Rol where Name=@roleTestTenant3 and Tnt=(select Id from Tnt where Name=@tnttest1)), (select Id from cat where Name=@cat11))
if not exists(select * from RolCat where Rol=(select Id from Rol where Name=@roleTestTenant4 and Tnt=(select Id from Tnt where Name=@tnttest1)) and Cat=(select Id from cat where Name=@cat9))
	insert into Rolcat(Rol, Cat) values((select Id from Rol where Name=@roleTestTenant4 and Tnt=(select Id from Tnt where Name=@tnttest1)), (select Id from cat where Name=@cat9))
if not exists(select * from RolCat where Rol=(select Id from Rol where Name=@roleTestTenant5 and Tnt=(select Id from Tnt where Name=@tnttest1)) and Cat=(select Id from cat where Name=@cat3))
	insert into Rolcat(Rol, Cat) values((select Id from Rol where Name=@roleTestTenant5 and Tnt=(select Id from Tnt where Name=@tnttest1)), (select Id from cat where Name=@cat3))
if not exists(select * from RolCat where Rol=(select Id from Rol where Name=@roleTestTenant6 and Tnt=(select Id from Tnt where Name=@tnttest1)) and Cat=(select Id from cat where Name=@cat4))
	insert into Rolcat(Rol, Cat) values((select Id from Rol where Name=@roleTestTenant6 and Tnt=(select Id from Tnt where Name=@tnttest1)), (select Id from cat where Name=@cat4))
if not exists(select * from RolCat where Rol=(select Id from Rol where Name=@roleTestTenant7 and Tnt=(select Id from Tnt where Name=@tnttest1)) and Cat=(select Id from cat where Name=@cat1))
	insert into Rolcat(Rol, Cat) values((select Id from Rol where Name=@roleTestTenant7 and Tnt=(select Id from Tnt where Name=@tnttest1)), (select Id from cat where Name=@cat1))
if not exists(select * from RolCat where Rol=(select Id from Rol where Name=@roleTestTenant8 and Tnt=(select Id from Tnt where Name=@tnttest1)) and Cat=(select Id from cat where Name=@cat2))
	insert into Rolcat(Rol, Cat) values((select Id from Rol where Name=@roleTestTenant8 and Tnt=(select Id from Tnt where Name=@tnttest1)), (select Id from cat where Name=@cat2))
if not exists(select * from RolCat where Rol=(select Id from Rol where Name=@roleTestTenant9 and Tnt=(select Id from Tnt where Name=@tnttest1)) and Cat=(select Id from cat where Name=@cat9))
	insert into Rolcat(Rol, Cat) values((select Id from Rol where Name=@roleTestTenant9 and Tnt=(select Id from Tnt where Name=@tnttest1)), (select Id from cat where Name=@cat9))
if not exists(select * from RolCat where Rol=(select Id from Rol where Name=@roleTestTenant9 and Tnt=(select Id from Tnt where Name=@tnttest1)) and Cat=(select Id from cat where Name=@cat10))
	insert into Rolcat(Rol, Cat) values((select Id from Rol where Name=@roleTestTenant9 and Tnt=(select Id from Tnt where Name=@tnttest1)), (select Id from cat where Name=@cat10))
if not exists(select * from RolCat where Rol=(select Id from Rol where Name=@roleTestTenant9 and Tnt=(select Id from Tnt where Name=@tnttest1)) and Cat=(select Id from cat where Name=@cat11))
	insert into Rolcat(Rol, Cat) values((select Id from Rol where Name=@roleTestTenant9 and Tnt=(select Id from Tnt where Name=@tnttest1)), (select Id from cat where Name=@cat11))
if not exists(select * from RolCat where Rol=(select Id from Rol where Name=@roleTestTenant9 and Tnt=(select Id from Tnt where Name=@tnttest1)) and Cat=(select Id from cat where Name=@cat12))
	insert into Rolcat(Rol, Cat) values((select Id from Rol where Name=@roleTestTenant9 and Tnt=(select Id from Tnt where Name=@tnttest1)), (select Id from cat where Name=@cat12))
if not exists(select * from RolCat where Rol=(select Id from Rol where Name=@roleTestTenant10 and Tnt=(select Id from Tnt where Name=@tnttest1)) and Cat=(select Id from cat where Name=@cat14))
	insert into Rolcat(Rol, Cat) values((select Id from Rol where Name=@roleTestTenant10 and Tnt=(select Id from Tnt where Name=@tnttest1)), (select Id from cat where Name=@cat14))
if not exists(select * from RolCat where Rol=(select Id from Rol where Name=@roleTestTenant11 and Tnt=(select Id from Tnt where Name=@tnttest1)) and Cat=(select Id from cat where Name=@cat15))
	insert into Rolcat(Rol, Cat) values((select Id from Rol where Name=@roleTestTenant11 and Tnt=(select Id from Tnt where Name=@tnttest1)), (select Id from cat where Name=@cat15))
if not exists(select * from RolCat where Rol=(select Id from Rol where Name=@roleTestTenant12 and Tnt=(select Id from Tnt where Name=@tnttest1)) and Cat=(select Id from cat where Name=@cat16))
	insert into Rolcat(Rol, Cat) values((select Id from Rol where Name=@roleTestTenant12 and Tnt=(select Id from Tnt where Name=@tnttest1)), (select Id from cat where Name=@cat16))
if not exists(select * from RolCat where Rol=(select Id from Rol where Name=@roleTestTenant13 and Tnt=(select Id from Tnt where Name=@tnttest1)) and Cat=(select Id from cat where Name=@cat13))
	insert into Rolcat(Rol, Cat) values((select Id from Rol where Name=@roleTestTenant13 and Tnt=(select Id from Tnt where Name=@tnttest1)), (select Id from cat where Name=@cat13))
-- One More Tenant
if not exists(select * from RolCat where Rol=(select Id from Rol where Name=@roleOneMoreTenant1 and Tnt=(select Id from Tnt where Name=@tnttest2)) and Cat=(select Id from cat where Name=@cat12))
	insert into Rolcat(Rol, Cat) values((select Id from Rol where Name=@roleOneMoreTenant1 and Tnt=(select Id from Tnt where Name=@tnttest2)), (select Id from cat where Name=@cat12))
if not exists(select * from RolCat where Rol=(select Id from Rol where Name=@roleOneMoreTenant2 and Tnt=(select Id from Tnt where Name=@tnttest2)) and Cat=(select Id from cat where Name=@cat10))
	insert into Rolcat(Rol, Cat) values((select Id from Rol where Name=@roleOneMoreTenant2 and Tnt=(select Id from Tnt where Name=@tnttest2)), (select Id from cat where Name=@cat10))
if not exists(select * from RolCat where Rol=(select Id from Rol where Name=@roleOneMoreTenant3 and Tnt=(select Id from Tnt where Name=@tnttest2)) and Cat=(select Id from cat where Name=@cat11))
	insert into Rolcat(Rol, Cat) values((select Id from Rol where Name=@roleOneMoreTenant3 and Tnt=(select Id from Tnt where Name=@tnttest2)), (select Id from cat where Name=@cat11))
if not exists(select * from RolCat where Rol=(select Id from Rol where Name=@roleOneMoreTenant4 and Tnt=(select Id from Tnt where Name=@tnttest2)) and Cat=(select Id from cat where Name=@cat9))
	insert into Rolcat(Rol, Cat) values((select Id from Rol where Name=@roleOneMoreTenant4 and Tnt=(select Id from Tnt where Name=@tnttest2)), (select Id from cat where Name=@cat9))
if not exists(select * from RolCat where Rol=(select Id from Rol where Name=@roleOneMoreTenant5 and Tnt=(select Id from Tnt where Name=@tnttest2)) and Cat=(select Id from cat where Name=@cat3))
	insert into Rolcat(Rol, Cat) values((select Id from Rol where Name=@roleOneMoreTenant5 and Tnt=(select Id from Tnt where Name=@tnttest2)), (select Id from cat where Name=@cat3))
if not exists(select * from RolCat where Rol=(select Id from Rol where Name=@roleOneMoreTenant6 and Tnt=(select Id from Tnt where Name=@tnttest2)) and Cat=(select Id from cat where Name=@cat4))
	insert into Rolcat(Rol, Cat) values((select Id from Rol where Name=@roleOneMoreTenant6 and Tnt=(select Id from Tnt where Name=@tnttest2)), (select Id from cat where Name=@cat4))
if not exists(select * from RolCat where Rol=(select Id from Rol where Name=@roleOneMoreTenant7 and Tnt=(select Id from Tnt where Name=@tnttest2)) and Cat=(select Id from cat where Name=@cat1))
	insert into Rolcat(Rol, Cat) values((select Id from Rol where Name=@roleOneMoreTenant7 and Tnt=(select Id from Tnt where Name=@tnttest2)), (select Id from cat where Name=@cat1))
if not exists(select * from RolCat where Rol=(select Id from Rol where Name=@roleOneMoreTenant8 and Tnt=(select Id from Tnt where Name=@tnttest2)) and Cat=(select Id from cat where Name=@cat2))
	insert into Rolcat(Rol, Cat) values((select Id from Rol where Name=@roleOneMoreTenant8 and Tnt=(select Id from Tnt where Name=@tnttest2)), (select Id from cat where Name=@cat2))
if not exists(select * from RolCat where Rol=(select Id from Rol where Name=@roleOneMoreTenant9 and Tnt=(select Id from Tnt where Name=@tnttest2)) and Cat=(select Id from cat where Name=@cat9))
	insert into Rolcat(Rol, Cat) values((select Id from Rol where Name=@roleOneMoreTenant9 and Tnt=(select Id from Tnt where Name=@tnttest2)), (select Id from cat where Name=@cat9))
if not exists(select * from RolCat where Rol=(select Id from Rol where Name=@roleOneMoreTenant9 and Tnt=(select Id from Tnt where Name=@tnttest2)) and Cat=(select Id from cat where Name=@cat10))
	insert into Rolcat(Rol, Cat) values((select Id from Rol where Name=@roleOneMoreTenant9 and Tnt=(select Id from Tnt where Name=@tnttest2)), (select Id from cat where Name=@cat10))
if not exists(select * from RolCat where Rol=(select Id from Rol where Name=@roleOneMoreTenant9 and Tnt=(select Id from Tnt where Name=@tnttest2)) and Cat=(select Id from cat where Name=@cat11))
	insert into Rolcat(Rol, Cat) values((select Id from Rol where Name=@roleOneMoreTenant9 and Tnt=(select Id from Tnt where Name=@tnttest2)), (select Id from cat where Name=@cat11))
if not exists(select * from RolCat where Rol=(select Id from Rol where Name=@roleOneMoreTenant9 and Tnt=(select Id from Tnt where Name=@tnttest2)) and Cat=(select Id from cat where Name=@cat12))
	insert into Rolcat(Rol, Cat) values((select Id from Rol where Name=@roleOneMoreTenant9 and Tnt=(select Id from Tnt where Name=@tnttest2)), (select Id from cat where Name=@cat12))
if not exists(select * from RolCat where Rol=(select Id from Rol where Name=@roleOneMoreTenant10 and Tnt=(select Id from Tnt where Name=@tnttest2)) and Cat=(select Id from cat where Name=@cat14))
	insert into Rolcat(Rol, Cat) values((select Id from Rol where Name=@roleOneMoreTenant10 and Tnt=(select Id from Tnt where Name=@tnttest2)), (select Id from cat where Name=@cat14))
if not exists(select * from RolCat where Rol=(select Id from Rol where Name=@roleOneMoreTenant11 and Tnt=(select Id from Tnt where Name=@tnttest2)) and Cat=(select Id from cat where Name=@cat15))
	insert into Rolcat(Rol, Cat) values((select Id from Rol where Name=@roleOneMoreTenant11 and Tnt=(select Id from Tnt where Name=@tnttest2)), (select Id from cat where Name=@cat15))
if not exists(select * from RolCat where Rol=(select Id from Rol where Name=@roleOneMoreTenant12 and Tnt=(select Id from Tnt where Name=@tnttest2)) and Cat=(select Id from cat where Name=@cat16))
	insert into Rolcat(Rol, Cat) values((select Id from Rol where Name=@roleOneMoreTenant12 and Tnt=(select Id from Tnt where Name=@tnttest2)), (select Id from cat where Name=@cat16))
if not exists(select * from RolCat where Rol=(select Id from Rol where Name=@roleOneMoreTenant13 and Tnt=(select Id from Tnt where Name=@tnttest2)) and Cat=(select Id from cat where Name=@cat13))
	insert into Rolcat(Rol, Cat) values((select Id from Rol where Name=@roleOneMoreTenant13 and Tnt=(select Id from Tnt where Name=@tnttest2)), (select Id from cat where Name=@cat13))

-- PostfixCfgCat
if not exists(select * from PostfixCfgCat where PostfixCfg=(select Id from postfixCfg where Domain=@PostfixCfgDomain) and Cat=(select Id from cat where Name=@cat1))
	insert into PostfixCfgCat(PostfixCfg, Cat) values((select Id from postfixCfg where Domain=@PostfixCfgDomain), (select Id from cat where Name=@cat1))
if not exists(select * from PostfixCfgCat where PostfixCfg=(select Id from postfixCfg where Domain=@PostfixCfgDomain) and Cat=(select Id from cat where Name=@cat8))
	insert into PostfixCfgCat(PostfixCfg, Cat) values((select Id from postfixCfg where Domain=@PostfixCfgDomain), (select Id from cat where Name=@cat8))
if not exists(select * from PostfixCfgCat where PostfixCfg=(select Id from postfixCfg where Domain=@PostfixCfgDomain) and Cat=(select Id from cat where Name=@cat12))
	insert into PostfixCfgCat(PostfixCfg, Cat) values((select Id from postfixCfg where Domain=@PostfixCfgDomain), (select Id from cat where Name=@cat12))
if not exists(select * from PostfixCfgCat where PostfixCfg=(select Id from postfixCfg where Domain=@PostfixCfgDomain) and Cat=(select Id from cat where Name=@cat13))
	insert into PostfixCfgCat(PostfixCfg, Cat) values((select Id from postfixCfg where Domain=@PostfixCfgDomain), (select Id from cat where Name=@cat13))

-- ClamavCfgCat
if not exists(select * from ClamavCfgCat where ClamavCfg=(select Id from ClamavCfg where Quarantine=@ClamavCfgQuarantine) and Cat=(select Id from cat where Name=@cat4))
	insert into ClamavCfgCat(ClamavCfg, Cat) values((select Id from ClamavCfg where Quarantine=@ClamavCfgQuarantine), (select Id from cat where Name=@cat4))
if not exists(select * from ClamavCfgCat where ClamavCfg=(select Id from ClamavCfg where Quarantine=@ClamavCfgQuarantine) and Cat=(select Id from cat where Name=@cat7))
	insert into ClamavCfgCat(ClamavCfg, Cat) values((select Id from ClamavCfg where Quarantine=@ClamavCfgQuarantine), (select Id from cat where Name=@cat7))
if not exists(select * from ClamavCfgCat where ClamavCfg=(select Id from ClamavCfg where Quarantine=@ClamavCfgQuarantine) and Cat=(select Id from cat where Name=@cat11))
	insert into ClamavCfgCat(ClamavCfg, Cat) values((select Id from ClamavCfg where Quarantine=@ClamavCfgQuarantine), (select Id from cat where Name=@cat11))
if not exists(select * from ClamavCfgCat where ClamavCfg=(select Id from ClamavCfg where Quarantine=@ClamavCfgQuarantine) and Cat=(select Id from cat where Name=@cat15))
	insert into clamavCfgCat(ClamavCfg, Cat) values((select Id from ClamavCfg where Quarantine=@ClamavCfgQuarantine), (select Id from cat where Name=@cat15))

--SpamassasinCfgCat
if not exists(select * from SpamassasinCfgCat where SpamassasinCfg=(select Id from SpamassasinCfg where Algorythm=@SpamassasinCfgAlgorythm) and Cat=(select Id from cat where Name=@cat3))
	insert into SpamassasinCfgCat(SpamassasinCfg, Cat) values((select Id from SpamassasinCfg where Algorythm=@SpamassasinCfgAlgorythm), (select Id from cat where Name=@cat3))
if not exists(select * from SpamassasinCfgCat where SpamassasinCfg=(select Id from SpamassasinCfg where Algorythm=@SpamassasinCfgAlgorythm) and Cat=(select Id from cat where Name=@cat11))
	insert into SpamassasinCfgCat(SpamassasinCfg, Cat) values((select Id from SpamassasinCfg where Algorythm=@SpamassasinCfgAlgorythm), (select Id from cat where Name=@cat11))
if not exists(select * from SpamassasinCfgCat where SpamassasinCfg=(select Id from SpamassasinCfg where Algorythm=@SpamassasinCfgAlgorythm) and Cat=(select Id from cat where Name=@cat15))
	insert into SpamassasinCfgCat(SpamassasinCfg, Cat) values((select Id from SpamassasinCfg where Algorythm=@SpamassasinCfgAlgorythm), (select Id from cat where Name=@cat15))

-- JabberCfgCat
if not exists(select * from JabberCfgCat where JabberCfg=(select Id from JabberCfg where Protocol=@JabberCfgProtocol) and Cat=(select Id from cat where Name=@cat2))
	insert into JabberCfgCat(JabberCfg, Cat) values((select Id from JabberCfg where Protocol=@JabberCfgProtocol), (select Id from cat where Name=@cat2))
if not exists(select * from JabberCfgCat where JabberCfg=(select Id from JabberCfg where Protocol=@JabberCfgProtocol) and Cat=(select Id from cat where Name=@cat5))
	insert into JabberCfgCat(JabberCfg, Cat) values((select Id from JabberCfg where Protocol=@JabberCfgProtocol), (select Id from cat where Name=@cat5))
if not exists(select * from JabberCfgCat where JabberCfg=(select Id from JabberCfg where Protocol=@JabberCfgProtocol) and Cat=(select Id from cat where Name=@cat9))
	insert into JabberCfgCat(JabberCfg, Cat) values((select Id from JabberCfg where Protocol=@JabberCfgProtocol), (select Id from cat where Name=@cat9))
if not exists(select * from JabberCfgCat where JabberCfg=(select Id from JabberCfg where Protocol=@JabberCfgProtocol) and Cat=(select Id from cat where Name=@cat11))
	insert into JabberCfgCat(JabberCfg, Cat) values((select Id from JabberCfg where Protocol=@JabberCfgProtocol), (select Id from cat where Name=@cat11))
if not exists(select * from JabberCfgCat where JabberCfg=(select Id from JabberCfg where Protocol=@JabberCfgProtocol) and Cat=(select Id from cat where Name=@cat15))
	insert into JabberCfgCat(JabberCfg, Cat) values((select Id from JabberCfg where Protocol=@JabberCfgProtocol), (select Id from cat where Name=@cat15))

-- Lib
if not exists(select * from Lib where Name=@libName1)
	insert into Lib(Name, Data, Comment, IsDel, IsDisabled) values(@libName1, @libData1, 'Here you can find all functions related to gathering different kind of HDD information.', 0, 0)
if not exists(select * from Lib where Name=@libName2)
	insert into Lib(Name, Data, Comment, IsDel, IsDisabled) values(@libName2, @libData2, 'Here you can find all functions related to gathering different kind of RAM information.', 0, 0)
if not exists(select * from Lib where Name=@libName3)
	insert into Lib(Name, Data, Comment, IsDel, IsDisabled) values(@libName3, @libData3, 'Here you can find all functions related to gathering different kind of CPU information.', 0, 0)
-- Scr
if not exists(select * from Scr where Name=@scrName1)
	insert into Scr(Name, Data, Comment, IsDel, IsDisabled) values(@scrName1, @scrData1, 'Script 1 comments', 0, 0)
if not exists(select * from Scr where Name=@scrName2)
	insert into Scr(Name, Data, Comment, IsDel, IsDisabled) values(@scrName2, @scrData2, 'Script 2 comments.', 0, 0)
if not exists(select * from Scr where Name=@scrName3)
	insert into Scr(Name, Data, Comment, IsDel, IsDisabled) values(@scrName3, @scrData3, 'Script 3 comments', 0, 0)
if not exists(select * from Scr where Name=@scrName4)
	insert into Scr(Name, Data, Comment, IsDel, IsDisabled) values(@scrName4, @scrData4, 'This script returning listing of selected directory on a current computer', 0, 0)
if not exists(select * from Scr where Name=@scrName5)
	insert into Scr(Name, Data, Comment, IsDel, IsDisabled) values(@scrName5, @scrData5, 'Obtaining free space on each drive of selected computer', 0, 0)
-- ScrLib
if not exists(select * from ScrLib where Scr=(select Id from Scr where Name=@scrName1) and Lib=(select Id from Lib where Name=@libName1))
	insert into ScrLib(Scr, Lib) values((select Id from Scr where Name=@scrName1), (select Id from Lib where Name=@libName1))
if not exists(select * from ScrLib where Scr=(select Id from Scr where Name=@scrName2) and Lib=(select Id from Lib where Name=@libName2))
	insert into ScrLib(Scr, Lib) values((select Id from Scr where Name=@scrName2), (select Id from Lib where Name=@libName2))
if not exists(select * from ScrLib where Scr=(select Id from Scr where Name=@scrName3) and Lib=(select Id from Lib where Name=@libName3))
	insert into ScrLib(Scr, Lib) values((select Id from Scr where Name=@scrName3), (select Id from Lib where Name=@libName3))
if not exists(select * from ScrLib where Scr=(select Id from Scr where Name=@scrName4) and Lib=(select Id from Lib where Name=@libName1))
	insert into ScrLib(Scr, Lib) values((select Id from Scr where Name=@scrName4), (select Id from Lib where Name=@libName1))
if not exists(select * from ScrLib where Scr=(select Id from Scr where Name=@scrName5) and Lib=(select Id from Lib where Name=@libName1))
	insert into ScrLib(Scr, Lib) values((select Id from Scr where Name=@scrName5), (select Id from Lib where Name=@libName1))

-- Task
if not exists(select * from Tsk where Name=@tskName1)
	insert into Tsk(Name, Comment, [Action], Rback, IsDel, IsDisabled, IsLongRunning, IsSupport, IsRollbackDisabled) values(@tskName1, 'Task 1 comments', (select Id from Scr where Data=@scrData1), null, 0, 0, 0, 0, 0)
if not exists(select * from Tsk where Name=@tskName2)
	insert into Tsk(Name, Comment, [Action], Rback, IsDel, IsDisabled, IsLongRunning, IsSupport, IsRollbackDisabled) values(@tskName2, 'Task 2 comments', (select Id from Scr where Data=@scrData2), null, 0, 0, 0, 1, 0)
if not exists(select * from Tsk where Name=@tskName3)
	insert into Tsk(Name, Comment, [Action], Rback, IsDel, IsDisabled, IsLongRunning, IsSupport, IsRollbackDisabled) values(@tskName3, 'Task 3 comments', (select Id from Scr where Data=@scrData1),  (select Id from Scr where Data=@scrData3), 0, 0, 1, 0, 1)
if not exists(select * from Tsk where Name=@tskName4)
	insert into Tsk(Name, Comment, [Action], Rback, IsDel, IsDisabled, IsLongRunning, IsSupport, IsRollbackDisabled) values(@tskName4, 'Task 4 comments', (select Id from Scr where Data=@scrData3), null, 0, 0, 1, 0, 0)
if not exists(select * from Tsk where Name=@tskName5)
	insert into Tsk(Name, Comment, [Action], Rback, IsDel, IsDisabled, IsLongRunning, IsSupport, IsRollbackDisabled) values(@tskName5, 'Get selected directory content. Current computer will be used', (select Id from Scr where Name=@scrName4), null, 0, 0, 1, 0, 0)
if not exists(select * from Tsk where Name=@tskName6)
	insert into Tsk(Name, Comment, [Action], Rback, IsDel, IsDisabled, IsLongRunning, IsSupport, IsRollbackDisabled) values(@tskName6, 'Get Drive spaces on selected Computer. You need to provide just a computer name or its IP address', (select Id from Scr where Name=@scrName5), null, 0, 0, 1, 0, 0)

-- TskCat
if not exists(select * from CatTsk where Tsk=(select Id from Tsk where Name=@tskName1) and Cat=(select Id from cat where Name=@cat20))
	insert into CatTsk(Tsk, Cat) values((select Id from Tsk where Name=@tskName1), (select Id from Cat where Name=@cat20))
if not exists(select * from CatTsk where Tsk=(select Id from Tsk where Name=@tskName2) and Cat=(select Id from cat where Name=@cat18))
	insert into CatTsk(Tsk, Cat) values((select Id from Tsk where Name=@tskName2), (select Id from Cat where Name=@cat18))
if not exists(select * from CatTsk where Tsk=(select Id from Tsk where Name=@tskName3) and Cat=(select Id from cat where Name=@cat17))
	insert into CatTsk(Tsk, Cat) values((select Id from Tsk where Name=@tskName3), (select Id from Cat where Name=@cat17))
if not exists(select * from CatTsk where Tsk=(select Id from Tsk where Name=@tskName4) and Cat=(select Id from cat where Name=@cat27))
	insert into CatTsk(Tsk, Cat) values((select Id from Tsk where Name=@tskName4), (select Id from Cat where Name=@cat27))
if not exists(select * from CatTsk where Tsk=(select Id from Tsk where Name=@tskName1) and Cat=(select Id from cat where Name=@cat28))
	insert into CatTsk(Tsk, Cat) values((select Id from Tsk where Name=@tskName1), (select Id from Cat where Name=@cat28))
if not exists(select * from CatTsk where Tsk=(select Id from Tsk where Name=@tskName2) and Cat=(select Id from cat where Name=@cat27))
	insert into CatTsk(Tsk, Cat) values((select Id from Tsk where Name=@tskName2), (select Id from Cat where Name=@cat27))
if not exists(select * from CatTsk where Tsk=(select Id from Tsk where Name=@tskName5) and Cat=(select Id from cat where Name=@cat20))
	insert into CatTsk(Tsk, Cat) values((select Id from Tsk where Name=@tskName5), (select Id from Cat where Name=@cat20))
if not exists(select * from CatTsk where Tsk=(select Id from Tsk where Name=@tskName6) and Cat=(select Id from cat where Name=@cat20))
	insert into CatTsk(Tsk, Cat) values((select Id from Tsk where Name=@tskName6), (select Id from Cat where Name=@cat20))

-- ParType
if not exists(select * from ParType where Name=@partypeName1)
	insert into ParType(Name, IsDel) values(@partypeName1, 0)
if not exists(select * from ParType where Name=@partypeName2)
	insert into ParType(Name, IsDel) values(@partypeName2, 0)
if not exists(select * from ParType where Name=@partypeName3)
	insert into ParType(Name, IsDel) values(@partypeName3, 0)
if not exists(select * from ParType where Name=@partypeName4)
	insert into ParType(Name, IsDel) values(@partypeName4, 0)
if not exists(select * from ParType where Name=@partypeName5)
	insert into ParType(Name, IsDel) values(@partypeName5, 0)
if not exists(select * from ParType where Name=@partypeName6)
	insert into ParType(Name, IsDel) values(@partypeName6, 0)
if not exists(select * from ParType where Name=@partypeName7)
	insert into ParType(Name, IsDel) values(@partypeName7, 0)
if not exists(select * from ParType where Name=@partypeName8)
	insert into ParType(Name, IsDel) values(@partypeName8, 0)
if not exists(select * from ParType where Name=@partypeName9)
	insert into ParType(Name, IsDel) values(@partypeName9, 0)
if not exists(select * from ParType where Name=@partypeName10)
	insert into ParType(Name, IsDel) values(@partypeName10, 0)
if not exists(select * from ParType where Name=@partypeName11)
	insert into ParType(Name, IsDel) values(@partypeName11, 0)

-- ParView
if not exists(select * from ParView where Name=@parviewName1)
	insert into ParView(Name, IsDel) values(@parviewName1, 0)
if not exists(select * from ParView where Name=@parviewName2)
	insert into ParView(Name, IsDel) values(@parviewName2, 0)
if not exists(select * from ParView where Name=@parviewName3)
	insert into ParView(Name, IsDel) values(@parviewName3, 0)
if not exists(select * from ParView where Name=@parviewName4)
	insert into ParView(Name, IsDel) values(@parviewName4, 0)
if not exists(select * from ParView where Name=@parviewName5)
	insert into ParView(Name, IsDel) values(@parviewName5, 0)
if not exists(select * from ParView where Name=@parviewName6)
	insert into ParView(Name, IsDel) values(@parviewName6, 0)
if not exists(select * from ParView where Name=@parviewName7)
	insert into ParView(Name, IsDel) values(@parviewName7, 0)
if not exists(select * from ParView where Name=@parviewName8)
	insert into ParView(Name, IsDel) values(@parviewName8, 0)
if not exists(select * from ParView where Name=@parviewName9)
	insert into ParView(Name, IsDel) values(@parviewName9, 0)
if not exists(select * from ParView where Name=@parviewName10)
	insert into ParView(Name, IsDel) values(@parviewName10, 0)
if not exists(select * from ParView where Name=@parviewName11)
	insert into ParView(Name, IsDel) values(@parviewName11, 0)
if not exists(select * from ParView where Name=@parviewName12)
	insert into ParView(Name, IsDel) values(@parviewName12, 0)
if not exists(select * from ParView where Name=@parviewName13)
	insert into ParView(Name, IsDel) values(@parviewName13, 0)
if not exists(select * from ParView where Name=@parviewName14)
	insert into ParView(Name, IsDel) values(@parviewName14, 0)
if not exists(select * from ParView where Name=@parviewName15)
	insert into ParView(Name, IsDel) values(@parviewName15, 0)
if not exists(select * from dbo.ParView where Name = @Special)
    insert into dbo.ParView(Name, IsDel) values(@Special, 0);


-- ParViewOption
if not exists(select * from ParViewOption where Name=@parviewOptionName1)
	insert into ParViewOption(Name, Data, IsDel) values(@parviewOptionName1, null, 0)
if not exists(select * from ParViewOption where Name=@parviewOptionName2)
	insert into ParViewOption(Name, Data, IsDel) values(@parviewOptionName2, null, 0)
if not exists(select * from ParViewOption where Name=@parviewOptionName3)
	insert into ParViewOption(Name, Data, IsDel) values(@parviewOptionName3, null, 0)
if not exists(select * from ParViewOption where Name=@parviewOptionName4)
	insert into ParViewOption(Name, Data, IsDel) values(@parviewOptionName4, 'javascript:makeMeGood();', 0)
if not exists(select * from ParViewOption where Name=@parviewOptionName5)
	insert into ParViewOption(Name, Data, IsDel) values(@parviewOptionName5, null, 0)
if not exists(select * from ParViewOption where Name=@parviewOptionName6)
	insert into ParViewOption(Name, Data, IsDel) values(@parviewOptionName6, @dirTblStr, 0)
if not exists(select * from ParViewOption where Name=@parviewOptionName7 and Seq = 21)
	insert into ParViewOption(Name, Data, IsDel, Seq) values(@parviewOptionName7, @driveSpaceInit, 0, 21)
if not exists(select * from ParViewOption where Name=@parviewOptionName9 and Seq=20)
	insert into ParViewOption(Name, Data, IsDel, Seq) values(@parviewOptionName9, @driveSpaceSpecial, 0, 20)
if not exists(select * from ParViewOption where Name=@parviewOptionName8 and Seq = 1000)
	insert into ParViewOption(Name, Data, IsDel, Seq) values(@parviewOptionName8, @driveSpaceWork, 0, 1000)
if not exists(select * from ParViewOption where Name=@parviewOptionName10)
	insert into ParViewOption(Name, Data, IsDel) values(@parviewOptionName10, @driveSpacefields, 0)
if not exists(select * from ParViewOption where Name=@parviewOptionName11 and Seq = 1)
	insert into ParViewOption(Name, Data, IsDel, Seq) values(@parviewOptionName11, @jqPlotJS, 0, 1)
if not exists(select * from ParViewOption where Name=@parviewOptionName11 and Seq = 2)
	insert into ParViewOption(Name, Data, IsDel, Seq) values(@parviewOptionName11, @jqPlotCSS, 0, 2)
if not exists(select * from ParViewOption where Name=@parviewOptionName11 and Seq = 3)
	insert into ParViewOption(Name, Data, IsDel, Seq) values(@parviewOptionName11, @jqPlotPieRendererJS, 0, 3)
if not exists(select * from ParViewOption where Name=@parviewOptionName12 and Seq = 10)
	insert into ParViewOption(Name, Data, IsDel, Seq) values(@parviewOptionName12, @parviewOptionValue12, 0, 10)
if not exists(select * from ParViewOption where Name=@parviewOptionName13 and Seq = 11)
	insert into ParViewOption(Name, Data, IsDel, Seq) values(@parviewOptionName13, @parviewOptionValue13, 0, 11)
if not exists(select * from ParViewOption where Name=@parviewOptionName14 and Seq = 12)
	insert into ParViewOption(Name, Data, IsDel, Seq) values(@parviewOptionName14, @parviewOptionValue14, 0, 12)
if not exists(select * from ParViewOption where Name=@parviewOptionName15 and Seq = 13)
	insert into ParViewOption(Name, Data, IsDel, Seq) values(@parviewOptionName15, @parviewOptionValue15, 0, 13)
if not exists(select * from ParViewOption where Name=@parviewOptionName16 and Seq = 14)
	insert into ParViewOption(Name, Data, IsDel, Seq) values(@parviewOptionName16, @parviewOptionValue16, 0, 14)
if not exists(select * from ParViewOption where Name=@parviewOptionName17 and Seq = 15)
	insert into ParViewOption(Name, Data, IsDel, Seq) values(@parviewOptionName17, @parviewOptionValue17, 0, 15)
if not exists(select * from ParViewOption where Name=@parviewOptionName18 and Seq = 22)
	insert into ParViewOption(Name, Data, IsDel, Seq) values(@parviewOptionName18, @parviewOptionValue18, 0, 22)
if not exists(select * from ParViewOption where Name=@parviewOptionName19 and Seq = 23)
	insert into ParViewOption(Name, Data, IsDel, Seq) values(@parviewOptionName19, @parviewOptionValue19, 0, 23)

-- ParViewParViewOption
if not exists(select * from ParViewParViewOption where ParView=(select top 1 Id from ParView where Name=@parviewName13 order by Id desc) and ParViewOption=(select Id from ParViewOption where Name=@parviewOptionName2))
	insert into ParViewParViewOption(ParView, ParViewOption) values((select top 1 Id from ParView where Name=@parviewName13 order by Id desc), (select Id from ParViewOption where Name=@parviewOptionName2))
if not exists(select * from ParViewParViewOption where ParView=(select top 1 Id from ParView where Name=@parviewName13 order by Id desc) and ParViewOption=(select Id from ParViewOption where Name=@parviewOptionName4))
	insert into ParViewParViewOption(ParView, ParViewOption) values((select top 1 Id from ParView where Name=@parviewName13 order by Id desc), (select Id from ParViewOption where Name=@parviewOptionName4))
if not exists(select * from ParViewParViewOption where ParView=(select top 1 Id from ParView where Name=@parviewName14 order by Id desc) and ParViewOption=(select Id from ParViewOption where Name=@parviewOptionName6))
	insert into ParViewParViewOption(ParView, ParViewOption) values((select top 1 Id from ParView where Name=@parviewName14 order by Id desc), (select Id from ParViewOption where Name=@parviewOptionName6))
if not exists(select * from ParViewParViewOption where ParView=(select top 1 Id from ParView where Name=@parviewName15 order by Id desc) and ParViewOption=(select Id from ParViewOption where Name=@parviewOptionName7 and Seq = 10))
	insert into ParViewParViewOption(ParView, ParViewOption) values((select top 1 Id from ParView where Name=@parviewName15 order by Id desc), (select Id from ParViewOption where Name=@parviewOptionName7 and Seq = 10))
if not exists(select * from ParViewParViewOption where ParView=(select top 1 Id from ParView where Name=@parviewName15 order by Id desc) and ParViewOption=(select Id from ParViewOption where Name=@parviewOptionName8 and Seq = 1000))
	insert into ParViewParViewOption(ParView, ParViewOption) values((select top 1 Id from ParView where Name=@parviewName15 order by Id desc), (select Id from ParViewOption where Name=@parviewOptionName8 and Seq = 1000))
if not exists(select * from ParViewParViewOption where ParView=(select top 1 Id from ParView where Name=@parviewName15 order by Id desc) and ParViewOption=(select Id from ParViewOption where Name=@parviewOptionName9 and Seq = 11))
	insert into ParViewParViewOption(ParView, ParViewOption) values((select top 1 Id from ParView where Name=@parviewName15 order by Id desc), (select Id from ParViewOption where Name=@parviewOptionName9 and Seq = 11))
if not exists(select * from ParViewParViewOption where ParView=(select top 1 Id from ParView where Name=@parviewName15 order by Id desc) and ParViewOption=(select Id from ParViewOption where Name=@parviewOptionName10))
	insert into ParViewParViewOption(ParView, ParViewOption) values((select top 1 Id from ParView where Name=@parviewName15 order by Id desc), (select Id from ParViewOption where Name=@parviewOptionName10))
if not exists(select * from ParViewParViewOption where ParView=(select top 1 Id from ParView where Name=@parviewName15 order by Id desc) and ParViewOption=(select Id from ParViewOption where Name=@parviewOptionName11 and Seq = 1))
	insert into ParViewParViewOption(ParView, ParViewOption) values((select top 1 Id from ParView where Name=@parviewName15 order by Id desc), (select Id from ParViewOption where Name=@parviewOptionName11 and Seq = 1))
if not exists(select * from ParViewParViewOption where ParView=(select top 1 Id from ParView where Name=@parviewName15 order by Id desc) and ParViewOption=(select Id from ParViewOption where Name=@parviewOptionName11 and Seq = 2))
	insert into ParViewParViewOption(ParView, ParViewOption) values((select top 1 Id from ParView where Name=@parviewName15 order by Id desc), (select Id from ParViewOption where Name=@parviewOptionName11 and Seq = 2))
if not exists(select * from ParViewParViewOption where ParView=(select top 1 Id from ParView where Name=@parviewName15 order by Id desc) and ParViewOption=(select Id from ParViewOption where Name=@parviewOptionName11 and Seq = 3))
	insert into ParViewParViewOption(ParView, ParViewOption) values((select top 1 Id from ParView where Name=@parviewName15 order by Id desc), (select Id from ParViewOption where Name=@parviewOptionName11 and Seq = 3))
if not exists(select * from ParViewParViewOption where ParView=(select top 1 Id from ParView where Name=@parviewName15 order by Id desc) and ParViewOption=(select Id from ParViewOption where Name=@parviewOptionName12 and Seq = 10))
	insert into ParViewParViewOption(ParView, ParViewOption) values((select top 1 Id from ParView where Name=@parviewName15 order by Id desc), (select Id from ParViewOption where Name=@parviewOptionName12 and Seq = 10))
if not exists(select * from ParViewParViewOption where ParView=(select top 1 Id from ParView where Name=@parviewName15 order by Id desc) and ParViewOption=(select Id from ParViewOption where Name=@parviewOptionName13 and Seq = 11))
	insert into ParViewParViewOption(ParView, ParViewOption) values((select top 1 Id from ParView where Name=@parviewName15 order by Id desc), (select Id from ParViewOption where Name=@parviewOptionName13 and Seq = 11))
if not exists(select * from ParViewParViewOption where ParView=(select top 1 Id from ParView where Name=@parviewName1 order by Id desc) and ParViewOption=(select Id from ParViewOption where Name=@parviewOptionName14 and Seq = 12))
	insert into ParViewParViewOption(ParView, ParViewOption) values((select top 1 Id from ParView where Name=@parviewName1 order by Id desc), (select Id from ParViewOption where Name=@parviewOptionName14 and Seq = 12))
if not exists(select * from ParViewParViewOption where ParView=(select top 1 Id from ParView where Name=@parviewName1 order by Id desc) and ParViewOption=(select Id from ParViewOption where Name=@parviewOptionName15 and Seq = 13))
	insert into ParViewParViewOption(ParView, ParViewOption) values((select top 1 Id from ParView where Name=@parviewName1 order by Id desc), (select Id from ParViewOption where Name=@parviewOptionName15 and Seq = 13))
if not exists(select * from ParViewParViewOption where ParView=(select top 1 Id from ParView where Name=@parviewName14 order by Id desc) and ParViewOption=(select Id from ParViewOption where Name=@parviewOptionName16 and Seq = 14))
	insert into ParViewParViewOption(ParView, ParViewOption) values((select top 1 Id from ParView where Name=@parviewName14 order by Id desc), (select Id from ParViewOption where Name=@parviewOptionName16 and Seq = 14))
if not exists(select * from ParViewParViewOption where ParView=(select top 1 Id from ParView where Name=@parviewName14 order by Id desc) and ParViewOption=(select Id from ParViewOption where Name=@parviewOptionName17 and Seq = 15))
	insert into ParViewParViewOption(ParView, ParViewOption) values((select top 1 Id from ParView where Name=@parviewName14 order by Id desc), (select Id from ParViewOption where Name=@parviewOptionName17 and Seq = 15))
if not exists(select * from ParViewParViewOption where ParView=(select top 1 Id from ParView where Name=@parviewName14 order by Id desc) and ParViewOption=(select Id from ParViewOption where Name=@parviewOptionName18 and Seq = 22))
	insert into ParViewParViewOption(ParView, ParViewOption) values((select top 1 Id from ParView where Name=@parviewName14 order by Id desc), (select Id from ParViewOption where Name=@parviewOptionName18 and Seq = 22))
if not exists(select * from ParViewParViewOption where ParView=(select top 1 Id from ParView where Name=@parviewName14 order by Id desc) and ParViewOption=(select Id from ParViewOption where Name=@parviewOptionName19 and Seq = 23))
	insert into ParViewParViewOption(ParView, ParViewOption) values((select top 1 Id from ParView where Name=@parviewName14 order by Id desc), (select Id from ParViewOption where Name=@parviewOptionName19 and Seq = 23))

-- Par
-- str, text
if not exists(select * from Par where Name=@parName1)
	insert into Par(Name, IsDel, IsInput, IsRequired, ParType, ParView, Comment, TskSupport, FlwSupport, ParSpecial, [Seq]) 
	values(@parName1, 0, 1, 1, (select Id from ParType where Name=@partypeName2), (select Id from ParView where Name=@parviewName1), 'Str as textbox', null, null, null, 2)
-- int, spinner
if not exists(select * from Par where Name=@parName2)
	insert into Par(Name, IsDel, IsInput, IsRequired, ParType, ParView, Comment, TskSupport, FlwSupport, ParSpecial, [Seq]) 
	values(@parName2, 0, 1, 1, (select Id from ParType where Name=@partypeName1), (select Id from ParView where Name=@parviewName3), 'Int as spinner', null, null, null, 1)
-- str, multiline
if not exists(select * from Par where Name=@parName3)
	insert into Par(Name, IsDel, IsInput, IsRequired, ParType, ParView, Comment, TskSupport, FlwSupport, ParSpecial, [Seq]) 
	values(@parName3, 0, 0, 1, (select Id from ParType where Name=@partypeName2), (select Id from ParView where Name=@parviewName2), 'Str as multiline', null, null, null, 1)
-- str, multiline
if not exists(select * from Par where Name=@parName4)
	insert into Par(Name, IsDel, IsInput, IsRequired, ParType, ParView, Comment, TskSupport, FlwSupport, ParSpecial, [Seq]) 
	values(@parName4, 0, 0, 1, (select Id from ParType where Name=@partypeName2), (select Id from ParView where Name=@parviewName2), 'Str as multiline', null, null, null, 2)
-- str, text
if not exists(select * from Par where Name=@parName5)
	insert into Par(Name, IsDel, IsInput, IsRequired, ParType, ParView, Comment, TskSupport, FlwSupport, ParSpecial, [Seq]) 
	values(@parName5, 0, 1, 1, (select Id from ParType where Name=@partypeName2), (select Id from ParView where Name=@parviewName1), 'Directory name', null, null, null, 3)
-- table, simpletable
if not exists(select * from Par where Name=@parName6)
	insert into Par(Name, IsDel, IsInput, IsRequired, ParType, ParView, Comment, TskSupport, FlwSupport, ParSpecial, [Seq]) 
	values(@parName6, 0, 0, 1, (select Id from ParType where Name=@partypeName10), (select Id from ParView where Name=@parviewName14), 'Directory listing', null, null, null, 2)
-- graph, piechart
if not exists(select * from Par where Name=@parName7)
	insert into Par(Name, IsDel, IsInput, IsRequired, ParType, ParView, Comment, TskSupport, FlwSupport, ParSpecial, [Seq]) 
	values(@parName7, 0, 0, 1, (select Id from ParType where Name=@partypeName11), (select Id from ParView where Name=@parviewName15), 'Drive Spaces on selected Computers', null, null, null, 1)
-- str, text
if not exists(select * from Par where Name=@parName8)
	insert into Par(Name, IsDel, IsInput, IsRequired, ParType, ParView, Comment, TskSupport, FlwSupport, ParSpecial, [Seq]) 
	values(@parName8, 0, 1, 1, (select Id from ParType where Name=@partypeName2), (select Id from ParView where Name=@parviewName1), 'Computer Name', null, null, null, 1)
-- str, text
if not exists(select * from Par where Name=@parName9)
	insert into Par(Name, IsDel, IsInput, IsRequired, ParType, ParView, Comment, TskSupport, FlwSupport, ParSpecial, [Seq]) 
	values(@parName9, 0, 0, 1, (select Id from ParType where Name=@partypeName2), (select Id from ParView where Name=@parviewName1), 'Computer Name', null, null, null,1 )

-- ScrPar
if not exists(select * from ScrPar where Scr=(select Id from Scr where Name=@scrName1) and Par=(select Id from Par where Name=@parName1))
	insert into ScrPar(Scr, Par) values((select Id from Scr where Name=@scrName1), (select Id from Par where Name=@parName1))
if not exists(select * from ScrPar where Scr=(select Id from Scr where Name=@scrName1) and Par=(select Id from Par where Name=@parName2))
	insert into ScrPar(Scr, Par) values((select Id from Scr where Name=@scrName1), (select Id from Par where Name=@parName2))
if not exists(select * from ScrPar where Scr=(select Id from Scr where Name=@scrName1) and Par=(select Id from Par where Name=@parName3))
	insert into ScrPar(Scr, Par) values((select Id from Scr where Name=@scrName1), (select Id from Par where Name=@parName3))
if not exists(select * from ScrPar where Scr=(select Id from Scr where Name=@scrName1) and Par=(select Id from Par where Name=@parName4))
	insert into ScrPar(Scr, Par) values((select Id from Scr where Name=@scrName1), (select Id from Par where Name=@parName4))
if not exists(select * from ScrPar where Scr=(select Id from Scr where Name=@scrName4) and Par=(select Id from Par where Name=@parName5))
	insert into ScrPar(Scr, Par) values((select Id from Scr where Name=@scrName4), (select Id from Par where Name=@parName5))
if not exists(select * from ScrPar where Scr=(select Id from Scr where Name=@scrName4) and Par=(select Id from Par where Name=@parName6))
	insert into ScrPar(Scr, Par) values((select Id from Scr where Name=@scrName4), (select Id from Par where Name=@parName6))
if not exists(select * from ScrPar where Scr=(select Id from Scr where Name=@scrName5) and Par=(select Id from Par where Name=@parName7))
	insert into ScrPar(Scr, Par) values((select Id from Scr where Name=@scrName5), (select Id from Par where Name=@parName7))
if not exists(select * from ScrPar where Scr=(select Id from Scr where Name=@scrName5) and Par=(select Id from Par where Name=@parName8))
	insert into ScrPar(Scr, Par) values((select Id from Scr where Name=@scrName5), (select Id from Par where Name=@parName8))
if not exists(select * from ScrPar where Scr=(select Id from Scr where Name=@scrName5) and Par=(select Id from Par where Name=@parName9))
	insert into ScrPar(Scr, Par) values((select Id from Scr where Name=@scrName5), (select Id from Par where Name=@parName9))

