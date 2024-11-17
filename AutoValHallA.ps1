$txtKarmotrine_ValueChanged = {
    # if enabled, auto-check
    if($AutoValHallA.txtKarmotrine.Enabled) {
        $AutoValHallA.lblKarmotrine.Checked = $true
    } else {
        $AutoValHallA.lblKarmotrine.Checked = $false
    }
}

$linkTag1_LinkClicked = {
    # TODO: Select drinks matching tag
}

$linkTag2_LinkClicked = {
}

$linkTag3_LinkClicked = {
}

#region Set up logging
Enum LogLevel {
    Info
    Warning
    Error
    Verbose
    Debug
}

function _Out {
    [CmdletBinding()]
    param (
        [Parameter(Position=0)]
        [string]
        $Message,
        [Parameter(
            Position=1
        )]
        [Alias('lvl', 'l')]
        [LogLevel]
        $Level = 'Info',
        [switch]
        $WriteToFile
    )

    Begin {
        $Format = "{0:yyyy-MM-dd HH:mm:ss} [{1}] {2}" -f (Get-Date), $Level, $Message
        $Format2 = "{0:yyyy-MM-dd HH:mm:ss} {1}" -f (Get-Date), $Message
        if($VerbosePreference -ne 'SilentlyContinue') {
            $Level = 'Verbose'
        } elseif($DebugPreference -ne 'SilentlyContinue') {
            $Level = 'Debug'
        }
    }

    Process {
        switch ($Level) {
            'Information' {
                Write-Output $Format
            }
            'Warning' {
                Write-Warning $format2
            }
            'Error' {
                Write-Error $format2
            }
            'Verbose' {
                Write-Verbose $Format2
            }
            'Debug' {
                Write-Debug $Format2
            }
        }
    }
}
#endregion Set up logging

<#region alternate win activation
$GameWindowPos = Get-AU3WinPos($hWnd)

$iTargetX = $GameWindowPos[0] + 510
$iTargetY = $GameWindowPos[1] + 340

_Out ("Win x: " + $iTargetX + ", y: " + $iTargetY)
#endregion alternate win activation
#>

#region Constants
_out "Setting up ingredient list"
$global:IngredientList = @{
    Adelhyde = @{
        Name = 'Adelhyde'
        Key = 'q'
        Color = '#e22743'
    }
    BronsonExtract = @{
        Name = 'Bronson Extract'
        Key = 'w'
        Color = '#fec73d'
    }
    PowderedDelta = @{
        Name = 'Powdered Delta'
        Key = 'e'
        Color = '#87a6e3'
    }
    Flanergide = @{
        Name = 'Flanergide'
        Key = 'r'
        Color = '#568B28'
    }
    Karmotrine = @{
        Name = 'Karmotrine'
        Key = 't'
        Color = '#c5e4e4'
    }
    Iced = @{
        Name = 'Iced'
        Key = 'a'
        Color = '#2187aa'
    }
    Aged = @{
        Name = 'Aged'
        Key = 's'
        Color = '#b851a5'
    }
}

_out "Setting up drink list"
$global:DrinkList = @{
    BadTouch = @{
        Name = "Bad Touch"
        Ingredients = @{
            Adelhyde = 0
            BronsonExtract = 2
            PowderedDelta = 2
            Flanergide = 2
            Karmotrine = 4
        }
        Iced = $true
        Aged = $false
        Blend = $false
        Tags = @('Sour', 'Classy', 'Vintage')
        Price = 250
    }
    Beer = @{
        Name = "Beer"
        Ingredients = @{
            Adelhyde       = 1
            BronsonExtract = 2
            PowderedDelta  = 1
            Flanergide     = 2
            Karmotrine     = 4
        }
        Iced        = $false
        Aged        = $false
        Blend       = $false
        Tags = @('Bubbly', 'Classy', 'Vintage')
        Price = 200
    }
    BleedingJane = @{
        Name = "Bleeding Jane"
        Ingredients = @{
            Adelhyde = 0
            BronsonExtract = 1
            PowderedDelta = 3
            Flanergide = 3
            Karmotrine = 0
        }
        Iced = $false
        Aged = $false
        Blend = $true
        Tags = @('Spicy', 'Classic', 'Sobering')
        Price = 200
    }
    BloomLight = @{
        Name = "Bloom Light"
        Ingredients = @{
            Adelhyde        = 4
            BronsonExtract  = 0
            PowderedDelta   = 1
            Flanergide      = 2
            Karmotrine      = 3
        }
        Iced = $true
        Aged = $true
        Blend = $false
        Tags = @('spicy', 'promo', 'bland')
        Price = 230
    }
    BlueFairy = @{
        Name = "Blue Fairy"
        Ingredients = @{
            Adelhyde = 4
            BronsonExtract = 0
            PowderedDelta = 0
            Flanergide = 1
            Karmotrine = "Optional"
        }
        Iced        = $false
        Aged        = $true
        Blend       = $false
        Tags        = @('sweet', 'girly', 'soft')
        Price       = 170
    }
    Brandtini = @{
        Name = "Brandtini"
        Ingredients = @{
            Adelhyde = 6
            BronsonExtract = 0
            PowderedDelta = 3
            Flanergide = 0
            Karmotrine = 1
        }
        Iced    = $false
        Aged    = $true
        Blend   = $false
        Tags    = @('sweet', 'classy', 'happy')
        Price   = 250

    }
    CobaltVelvet = @{
        Name = "Cobalt Velvet"
        Ingredients = @{
            Adelhyde = 2
            BronsonExtract = 0
            PowderedDelta = 0
            Flanergide = 3
            Karmotrine = 5
        }
        Iced = $true
        Aged = $false
        Blend = $false
        Tags        = @('bubbly', 'classy', 'burning')
        Price       = 280
    }
    CreviceSpike = @{
        Name = "Crevice Spike"
        Ingredients = @{
            Adelhyde = 0
            BronsonExtract = 0
            PowderedDelta = 2
            Flanergide = 4
            Karmotrine = "Optional"
        }
        Iced = $false
        Aged = $false
        Blend = $true
        Tags        = @('sour', 'manly', 'sobering')
        Price       = 140
    }
    FlamingMaoi = @{
        Name = "Flaming Maoi"
        Ingredients = @{
            Adelhyde        = 1
            BronsonExtract  = 1
            PowderedDelta   = 2
            Flanergide      = 3
            Karmotrine      = 5
        }
        Iced        = $false
        Aged        = $false
        Blend       = $false
        Tags        = @('sour', 'classic', 'classy')
        Price       = 150
    }
    FluffyDream = @{
        Name = "Fluffy Dream"
        Ingredients = @{
            Adelhyde = 3
            BronsonExtract = 0
            PowderedDelta = 3
            Flanergide = 0
            Karmotrine = "Optional"
        }
        Iced        = $false
        Aged        = $true
        Blend       = $false
        Tags        = @('sour', 'girly', 'soft')
        Price       = 170
    }
    FringeWeaver = @{
        Name = "Fringe Weaver"
        Ingredients = @{
            Adelhyde = 1
            BronsonExtract = 0
            PowderedDelta = 0
            Flanergide = 0
            Karmotrine = 9
        }
        Iced        = $false
        Aged        = $true
        Blend       = $false
        Tags        = @('bubbly', 'classy', 'strong')
        Price       = 260
    }
    FrothyWater = @{
        Name = "Frothy Water"
        Ingredients = @{
            Adelhyde = 1
            BronsonExtract = 1
            PowderedDelta = 1
            Flanergide = 1
            Karmotrine = 0
        }
        Iced        = $false
        Aged        = $true
        Blend       = $false
        Tags        = @('bubbly', 'classic', 'bland')
        Price       = 150
    }
    GrizzlyTemple = @{
        Name = "Grizzly Temple"
        Ingredients = @{
            Adelhyde = 3
            BronsonExtract = 3
            PowderedDelta = 3
            Flanergide = 0
            Karmotrine = 1
        }
        Iced        = $false
        Aged        = $false
        Blend       = $true
        Tags        = @('bitter', 'promo', 'bland')
        Price       = 220
    }
    GutPunch = @{
        Name = "Gut Punch"
        Ingredients = @{
            Adelhyde = 0
            BronsonExtract = 5
            PowderedDelta = 0
            Flanergide = 1
            Karmotrine = "Optional"
        }
        Iced        = $false
        Aged        = $true
        Blend       = $false
        Tags        = @('bitter', 'manly', 'strong')
        Price       = 80
    }
    Marsblast = @{
        Name = "Marsblast"
        Ingredients = @{
            Adelhyde = 0
            BronsonExtract = 6
            PowderedDelta = 1
            Flanergide = 4
            Karmotrine = 2
        }
        Iced        = $false
        Aged        = $false
        Blend       = $true
        Tags        = @('spicy', 'manly', 'strong')
        Price       = 170
    }
    Mercuryblast = @{
        Name = "Mercuryblast"
        Ingredients = @{
            Adelhyde = 1
            BronsonExtract = 1
            PowderedDelta = 3
            Flanergide = 3
            Karmotrine = 2
        }
        Iced        = $true
        Aged        = $false
        Blend       = $true
        Tags        = @('sour', 'classy', 'burning')
        Price       = 250
    }
    # ------ continue here
    Moonblast = @{
        Name = "Moonblast"
        Ingredients = @{
            Adelhyde = 6
            BronsonExtract = 0
            PowderedDelta = 1
            Flanergide = 1
            Karmotrine = 2
        }
        Iced        = $true
        Aged        = $false
        Blend       = $true
        Tags        = @('sweet', 'girly', 'happy')
        Price       = 180
    }
    PianoMan = @{
        Name = "Piano Man"
        Ingredients = @{
            Adelhyde = 2
            BronsonExtract = 3
            PowderedDelta = 5
            Flanergide = 5
            Karmotrine = 3
        }
        Iced        = $true
        Aged        = $false
        Blend       = $false
        Tags        = @('sour', 'promo', 'strong')
        Price       = 320

    }
    PianoWoman = @{
        Name = "Piano Woman"
        Ingredients = @{
            Adelhyde = 5
            BronsonExtract = 5
            PowderedDelta = 2
            Flanergide = 3
            Karmotrine = 3
        }
        Iced = $false
        Aged = $true
        Blend = $false
        Tags        = @('sweet', 'promo', 'happy')
        Price       = 320

    }
    PileDriver = @{
        Name = "Pile Driver"
        Ingredients = @{
            Adelhyde = 0
            BronsonExtract = 3
            PowderedDelta = 0
            Flanergide = 3
            Karmotrine = 4
        }
        Iced = $false
        Aged = $false
        Blend = $false
        Tags        = @('bitter', 'manly', 'burning')
        Price       = 160

    }
    SparkleStar = @{
        Name = "Sparkle Star"
        Ingredients = @{
            Adelhyde = 2
            BronsonExtract = 0
            PowderedDelta = 1
            Flanergide = 0
            Karmotrine = "Optional"
        }
        Iced = $false
        Aged = $true
        Blend = $false
        Tags        = @('sweet', 'girly', 'happy')
        Price       = 150

    }
    SugarRush = @{
        Name = "Sugar Rush"
        Ingredients = @{
            Adelhyde = 2
            BronsonExtract = 0
            PowderedDelta = 1
            Flanergide = 0
            Karmotrine = "Optional"
        }
        Iced = $false
        Aged = $false
        Blend = $false
        Tags        = @('sweet', 'girly', 'happy')
        Price       = 150

    }
    SunshineCloud = @{
        Name = "Sunshine Cloud"
        Ingredients = @{
            Adelhyde = 2
            BronsonExtract = 2
            PowderedDelta = 0
            Flanergide = 0
            Karmotrine = "Optional"
        }
        Iced = $true
        Aged = $false
        Blend = $true
        Tags        = @('bitter', 'girly', 'soft')
        Price       = 150

    }
    Suplex = @{
        Name = "Suplex"
        Ingredients = @{
            Adelhyde = 0
            BronsonExtract = 4
            PowderedDelta = 0
            Flanergide = 3
            Karmotrine = 3
        }
        Iced = $true
        Aged = $false
        Blend = $false
        Tags        = @('bitter', 'manly', 'burning')
        Price       = 160
    }
    ZenStar = @{
        Name = "Zen Star"
        Ingredients = @{
            Adelhyde = 4
            BronsonExtract = 4
            PowderedDelta = 4
            Flanergide = 4
            Karmotrine = 4
        }
        Iced        = $true
        Aged        = $false
        Blend       = $false
        Tags        = @('sour', 'promo', 'bland')
        Price       = 210
    }
}

# user preference
$global:OptionalKarmotrine = 0
#endregion

#region Get AU3 module and window
try {
    _out "Importing AutoItX module" -lvl Verbose
    Add-Type 'System.Windows.Forms'
    Import-Module .\Resources\AutoItX.psd1
} catch {
    _Out 'Failed to import AutoItX module.'
    Write-Error -Exception ([System.IO.FileLoadException]::new('Failed to import AutoItX module.', '.\Resources\AutoItX.psd1'))
    Exit 2 # file not found return code
}

# Game is locked at 30FPS / ~33.3 ms
Set-AU3Option -Option "SendKeyDelay" -Value 50

# initial check for running game process
$GameProcess = Get-Process 'VA-11 Hall A' -ea 0 # title: "VA-11 Hall-A: Cyberpunk Bartender Action"
If ($GameProcess) {
    $hWnd = $GameProcess.MainWindowHandle
    _Out "Game process found @ $hWnd"
    # TODO: Set button text to 'Mix'
    $autoValHallA.btnSend.Text = 'Mix'
} else {
    # TODO: Set button text to 'Connect' and set appropriate status message
    _Out 'Game process not found.'
    $autoValHallA.btnSend.Text = 'Connect'
    # Write-Error -Exception ([System.Management.Automation.CommandNotFoundException]::new("Game process not found."))
    # Exit 4
}

# this has to be used instead of Set-Au3WinActive for whatever reason
Add-Type @'
    using System;
    using System.Runtime.InteropServices;
    public class Win32 {
        [DllImport("user32.dll")]
        public static extern bool SetForegroundWindow(IntPtr hWnd);
    }
'@
#endregion get au3 module and window

$TestDrinklist = @{
    BlueFairy = @{
        Name = "Blue Fairy"
        Ingredients = @{
            Adelhyde = 4
            BronsonExtract = 0
            PowderedDelta = 0
            Flanergide = 1
            Karmotrine = "Optional"
        }
        Iced        = $false
        Aged        = $true
        Blend       = $false
        Tags        = @('sweet', 'girly', 'soft')
        Price       = 170
    }
    Brandtini = @{
        Name = "Brandtini"
        Ingredients = @{
            Adelhyde = 6
            BronsonExtract = 0
            PowderedDelta = 3
            Flanergide = 0
            Karmotrine = 1
        }
        Iced    = $false
        Aged    = $true
        Blend   = $false
        Tags    = @('sweet', 'classy', 'happy')
        Price   = 250

    }
}

#region make drink
function _VAMake-Drink {
    param (
        [string]
        $DrinkName
    )

    $Drink = $global:DrinkList[$DrinkName]

    # set up the wait time for blended drinks
    if($Drink.Blend) {
        $SleepWait = 3200
    } else {
        # otherwise, stopping immediately is fine
        $SleepWait = 1000
    }

    # send keys
    if($Drink.Ingredients.Karmotrine -eq 'Optional') {
        # send chars with a 0 aren't sent
        $SendString = '{{q {0}}}{{w {1}}}{{e {2}}}{{r {3}}}' -f $Drink.Ingredients.Adelhyde, $Drink.Ingredients.BronsonExtract, $Drink.Ingredients.PowderedDelta, $Drink.Ingredients.Flanergide
        # TODO: Read 'optional' karmotrine setting from UI
        if($global:OptionalKarmotrine) {
            $SendString += '{{t {0}}}' -f $global:OptionalKarmotrine
        }
    } else {
        $SendString = '{{q {0}}}{{w {1}}}{{e {2}}}{{r {3}}}{{t {3}}}' -f $Drink.Ingredients.Adelhyde, $Drink.Ingredients.BronsonExtract, $Drink.Ingredients.PowderedDelta, $Drink.Ingredients.Flanergide, $Drink.Ingredients.Karmotrine
    }

    _out "Sending keys for $DrinkName`: $SendString"

    # disable button until mixing is done
    $AutoValHallA.btnSend.Enabled = $false

    # this is necessary as Set-AU3WinActive doesn't want to work
    [Win32]::SetForegroundWindow($hWnd)

    # start mixing
    Send-AU3Key $SendString
    if($drink.Iced) {
        Send-AU3Key "a"
    }
    if($drink.Aged) {
        Send-AU3Key "s"
    }

    sleep -ms 500

    Send-AU3Key "{SPACE}"

    # sleep longer for blended drinks
    sleep -ms $SleepWait

    Send-AU3Key "{SPACE}"

    # re-enable send button
    $AutoValHallA.btnSend.Enabled = $true
}

$cbKarmotrine_CheckedChanged = {
    if($cbKarmotrine.Checked) {
        $global:OptionalKarmotrine = 1
        $AutoValHallA.txtKarmotrine.Enabled = $true
        $AutoValHallA.txtKarmotrine.Text = 1
    } else {
        $global:OptionalKarmotrine = 0
        $AutoValHallA.txtkarmotrine.Enabled = $false
        $AutoValHallA.txtkarmotrine.Text = 0
    }
}

$btnSend_Click = {
    $GameProcess = Get-Process 'VA-11 Hall A' -ea 0 # title: "VA-11 Hall-A: Cyberpunk Bartender Action"
    If ($GameProcess) {
        $hWnd = $GameProcess.MainWindowHandle
        _Out "Game process found @ $hWnd"
        
        if($autoValHallA.btnSend.Text -eq 'Mix') {
            $DrinkSelected = $autoValHallA.cbDrink.SelectedItem
            _VAMake-Drink -DrinkName $DrinkSelected
        }
    } else {
        # TODO: Set button text to 'Connect' and set appropriate status message
        _Out 'Game process not found.'
        $autoValHallA.btnSend.Text = 'Connect'
        # Write-Error -Exception ([System.Management.Automation.CommandNotFoundException]::new("Game process not found."))
        # Exit 4
    }
}

. (Join-Path $PSScriptRoot 'AutoValHallA.designer.ps1')


$GamehWnd = Get-AU3WinHandle -Title "VA-11 Hall-A"
If (-not ($GamehWnd)) {
	_Out "Game window not found."
	Return 2
}


$AutoValHallA.ShowDialog()