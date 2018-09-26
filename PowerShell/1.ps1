# --------------- Module begin ---------------------

function Init-Mss
{
    param(
        $url,
        $login,
        $pass,
        $preparForAllTenants = $true
    )

    $uri = [Uri]$url; $ApiVer = 'v1'; $ApiPrefix = "/api/$($ApiVer)/";
    Set-Variable -Name Mss  -Value (New-Object PSObject -Property @{
        url = [Uri]$url;
        ContentType = "application/json; charset=utf-8";
        AuthChallenge = [System.Convert]::ToBase64String([System.Text.Encoding]::UTF8.GetBytes("$($login):$($pass)"));
        ApiVer = $ApiVer;
        ApiPrefix = $ApiPrefix;        
        Tenants = $null;
        Common = $null;
        Uri = (New-Object PSObject -Property @{
            PsFunctionality   = New-Object PSObject -Property @{Method='GET'; Url = "$($uri.Scheme)://$($uri.Host):$($uri.Port)$($ApiPrefix)tenant/{tntId}/ps";};
            Init              = New-Object PSObject -Property @{Method='GET'; Url = "$($uri.Scheme)://$($uri.Host):$($uri.Port)$($ApiPrefix)common/init";};
            TenantList        = New-Object PSObject -Property @{Method='GET'; Url = "$($uri.Scheme)://$($uri.Host):$($uri.Port)$($ApiPrefix)common/tenant";};
            TenantDetail      = New-Object PSObject -Property @{Method='GET'; Url = "$($uri.Scheme)://$($uri.Host):$($uri.Port)$($ApiPrefix)tenant/{tntId}";};
            TenantRoleList    = New-Object PSObject -Property @{Method='GET'; Url = "$($uri.Scheme)://$($uri.Host):$($uri.Port)$($ApiPrefix)common/role/{tntId}";};
            TaskDetail        = New-Object PSObject -Property @{Method='GET'; Url = "$($uri.Scheme)://$($uri.Host):$($uri.Port)$($ApiPrefix)task/{tskId}/category/{catId}/service/{srvId}/tenant/{tntId}";};
            TaskRunDetailLast = New-Object PSObject -Property @{Method='GET'; Url = "$($uri.Scheme)://$($uri.Host):$($uri.Port)$($ApiPrefix)task/{tskId}/category/{catId}/service/{srvId}/tenant/{tntId}/run/0";};
            TaskRunDetail     = New-Object PSObject -Property @{Method='GET'; Url = "$($uri.Scheme)://$($uri.Host):$($uri.Port)$($ApiPrefix)task/{tskId}/category/{catId}/service/{srvId}/tenant/{tntId}/run/{runId}";};
            TaskRunHistory    = New-Object PSObject -Property @{Method='GET'; Url = "$($uri.Scheme)://$($uri.Host):$($uri.Port)$($ApiPrefix)task/{tskId}/category/{catId}/service/{srvId}/tenant/{tntId}/history";}
            TaskRun           = New-Object PSObject -Property @{Method='POST'; Url = "$($uri.Scheme)://$($uri.Host):$($uri.Port)$($ApiPrefix)run/task/{tskflwId}/tenant/{tntId}";};
        });
    })     -Scope Global -Option AllScope;

    $Mss.Common = Get-CommonInfo;
    $Mss.Tenants = Get-Tenants;
    if($preparForAllTenants) {
        if($Mss.Tenants -ne $null) {
            foreach($t in $Mss.Tenants) {
                Get-PsFunctionality -tntId $t.Id | Out-Null
            }
        }
    }
}

function Get-PsFunctionality {
    param(
        $tntId
    )

    .([scriptblock]::Create((Communicate-Mss -what PsFunctionality -auth $true -urlParam @{tntId=$tntId})));
}

function Get-CommonInfo {
    $ret = Communicate-Mss -what Init;
    $Mss.Common = $ret;
    $ret;
}

function Get-Tenants {
    $ret = Communicate-Mss -what TenantList;
    $Mss.Common = $ret;
    $ret;
}

function Run-TaskFlow {
    param(
        $tntId,
        $tskflwId,
        $runParams
    )

    Communicate-Mss -what TaskRun -auth $true -urlParam @{tntId=$tntId; tskflwId=$tskflwId} -param $runParams;
}

function Get-TasksFlowForTenant {
    param(
        $tntId
    )
    $ret = @();
    $tnt = Communicate-Mss -what TenantDetail -auth $true -urlParam @{tntId=$tntId};
    if($tnt -ne $null) {
        foreach($s in $tnt.Srv) {
            $sTemp = New-Object PSObject -Property @{Service = $s; Category=$null; Task = $null; Flow = $null}
            foreach($c in $s.Cat) {
                $cTemp = $sTemp.PsObject.Copy();
                $cTemp.Category = $c;
                foreach($t in $c.Tsk) {
                    $tTemp = $cTemp.PsObject.Copy();
                    $tTemp.Task = $t;
                    $ret += $tTemp;
                }
                foreach($f in $c.Flw) {
                    $fTemp = $cTemp.PsObject.Copy();
                    $fTemp.Flow = $f;
                    $ret += $fTemp;
                }
            }            
        }
    }
    $ret
}

function New-MssAuthChallenge
{
    param(
        $login, $pass
    )
    
    if(dir variable:Mss -ne $null) {
        $Mss.Challenge = [System.Convert]::ToBase64String([System.Text.Encoding]::UTF8.GetBytes("$($login):$($pass)"));
    }
}

function Communicate-Mss
{
    param(
        $what,        
        $auth = $true,
        $urlParam = $null,
        $param
    )

    $res = $null;

    if($auth) {
        $hdr += @{'Authorization'="Basic $($Mss.AuthChallenge)"}
    }

    $data = $Mss.Uri.$what;
    if($data -ne $null) {
        $url = $data.Url;
        if($urlParam -ne $null) {
            foreach($k in $urlParam.Keys) {
                $url = $url.Replace("{$k}", $urlParam[$k]);
            }
        }

        if($data.Method -ne 'GET' -and $param -ne $null) {
            # Not a GET Method
            $q = (New-Object PSObject -Property @{json=$(ConvertTo-Json $param -Compress)}) | ConvertTo-Json -Compress;
            $q.Replace("\\", "\\\\");
            $res = Invoke-RestMethod -Method $data.Method -Uri $url -Headers $hdr -Body q -ContentType $Mss.ContentType
        }
        else {
            # GET Method            
            $res = Invoke-RestMethod -Method $data.Method -Uri $url -Headers $hdr
        }
    }
    $res;
}

# --------------- Module end   ---------------------

Init-Mss -url 'http://localhost:49279/' -login 'mss.local\Administrator' -pass P@ssw0rd -preparForAllTenants $true

Get-TasksFlowForTenant -tntId 1
Run-TaskFlow -tntId 1 -tskflwId 5 -runParams @{Directory='C:\Tools'}