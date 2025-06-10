Write-Host "  ______________________"
Write-Host "< Welcome to powershell! >"
Write-Host "  ----------------------"
Write-Host "         \   ^__^"
Write-Host "          \  (oo)\_______"
Write-Host "             (__)\       )\/\\"
Write-Host "                 ||----w |"
Write-Host "                 ||     ||"
 
function prompt {
    $host.UI.RawUI.WindowTitle = "$PWD"

    $LastCommand = Get-History -Count 1
    $ElapsedTime = ""

    if ($LastCommand) {
        $RunTime = ($LastCommand.EndExecutionTime - $LastCommand.StartExecutionTime).TotalMilliseconds
        $ts = [timespan]::FromMilliseconds($RunTime)

        # Détermine le format d'affichage en fonction de la durée
        if ($ts.TotalMinutes -ge 1) {
            $ElapsedTime = "[{0:D2}:{1:D2}:{2:D3}] " -f $ts.Minutes, $ts.Seconds, $ts.Milliseconds
        } elseif ($ts.TotalSeconds -ge 1) {
            $ElapsedTime = "[{0:D2}:{1:D3}] " -f $ts.Seconds, $ts.Milliseconds
        } else {
            $ElapsedTime = "[{0:D3}] " -f $ts.Milliseconds
        }
    }

    Write-Host $ElapsedTime -NoNewLine -ForegroundColor White
    Write-Host "$PWD" -NoNewLine -ForegroundColor Green
    Write-Host ">" -NoNewline

    return " "
}

Set-PSReadLineKeyHandler -Key Tab -Function Complete

function source {
	if ($args) {
		. $args
	} else {
		. $PROFILE
	}
}

