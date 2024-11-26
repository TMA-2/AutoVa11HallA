$ErrorActionPreference = 'SilentlyContinue'

$btnSend_KeyPress = {
    if($input.KeyChar -eq 'Enter') {
        # Forward to Click event
        .$btnSend_Click
    }
}

$textMain_DoubleClick = {
    $this.Text = ""
}

$listDrinks_SelectedValueChanged = {
    $SelectedDrink = $script:DrinkList.Values | ? {$_.Name -eq $this.SelectedItem}
    [int]$BigDrink = if($AutoValHallA.cbBig.Checked) { 2 } else { 1 }
    # $AutoValHallA.textMain.Text = ""
    $AutoValHallA.txtAdelhyde.Text = [int]$SelectedDrink.Ingredients.Adelhyde * $BigDrink
    $AutoValHallA.txtBronsonExtract.Text = [int]$SelectedDrink.Ingredients.BronsonExtract * $BigDrink
    $AutoValHallA.txtPowderedDelta.Text = [int]$SelectedDrink.Ingredients.PowderedDelta * $BigDrink
    $AutoValHallA.txtFlanergide.Text = [int]$SelectedDrink.Ingredients.Flanergide * $BigDrink
    if($SelectedDrink.Ingredients.Karmotrine -eq 'Optional') {
        $AutoValHallA.cbKarmotrine.Checked = $true
        $AutoValHallA.txtKarmotrine.Enabled = $true
    } else {
        $AutoValHallA.cbKarmotrine.Checked = $false
        $AutoValHallA.txtKarmotrine.Enabled = $false
        $AutoValHallA.txtKarmotrine.Text = [int]$SelectedDrink.Ingredients.Karmotrine * $BigDrink
    }
    if($SelectedDrink.Iced) {
        $AutoValHallA.cbIced.Checked = $true
    } else {
        $AutoValHallA.cbIced.Checked = $false
    }
    if($SelectedDrink.Aged) {
        $AutoValHallA.cbAged.Checked = $true
    } else {
        $AutoValHallA.cbAged.Checked = $false
    }
    $AutoValHallA.linkTag1.Text = $SelectedDrink.Tags[0]
    $AutoValHallA.linkTag2.Text = $SelectedDrink.Tags[1]
    $AutoValHallA.linkTag3.Text = $SelectedDrink.Tags[2]
}

$textMain_KeyPress = {
    # nothing to do here
}

$textMain_TextChanged = {
    $SelectedDrink = $this.Text
    # Garbage attempted data binding
    # $AutoValHallA.BindingSource1.Filter = "Name LIKE '*$SelectedDrink*'"
    
    $AutoValHallA.UseWaitCursor = $true
    $script:DrinkList.Values | FilterDrinkList -Filter {$_.Name -like "*$SelectedDrink*"}
    $AutoValHallA.UseWaitCursor = $false

    <# $autoValHallA.listDrinks.Items.Clear()
    $script:DrinkList.Values | Where-Object {$_.Name -like "*$SelectedDrink*"} | ForEach-Object {
        $autoValHallA.listDrinks.Items.Add($_.Name)
    } #>
}

$txtKarmotrine_ValueChanged = {
    # if enabled, auto-check and update optional karmotrine value
    if($this.Text -eq 0) {
        $AutoValHallA.cbKarmotrine.Checked = $false
    } else {
        $AutoValHallA.cbKarmotrine.Checked = $true
    }
    $script:OptionalKarmotrine = $this.Text
}

$cbKarmotrine_CheckedChanged = {
    if($this.Checked) {
        $AutoValHallA.txtKarmotrine.Enabled = $true
        # $AutoValHallA.txtKarmotrine.Text = $script:OptionalKarmotrine
    }
}

$cbBig_CheckedChanged = {
    $SelectedDrink = $script:DrinkList.Values | ? {$_.Name -eq $AutoValHallA.listDrinks.SelectedItem}
    if($this.Checked) {
        $AutoValHallA.txtAdelhyde.Text = [int]$AutoValHallA.txtAdelhyde.Text * 2
        $AutoValHallA.txtBronsonExtract.Text = [int]$AutoValHallA.txtBronsonExtract.Text * 2
        $AutoValHallA.txtPowderedDelta.Text = [int]$AutoValHallA.txtPowderedDelta.Text * 2
        $AutoValHallA.txtFlanergide.Text = [int]$AutoValHallA.txtFlanergide.Text * 2
        $AutoValHallA.txtKarmotrine.Text = [int]$AutoValHallA.txtKarmotrine.Text * 2
    } else {
        $AutoValHallA.txtAdelhyde.Text = $SelectedDrink.Ingredients.Adelhyde
        $AutoValHallA.txtBronsonExtract.Text = $SelectedDrink.Ingredients.BronsonExtract
        $AutoValHallA.txtPowderedDelta.Text = $SelectedDrink.Ingredients.PowderedDelta
        $AutoValHallA.txtFlanergide.Text = $SelectedDrink.Ingredients.Flanergide
        $AutoValHallA.txtKarmotrine.Text = $SelectedDrink.Ingredients.Karmotrine
    }
}

$btnSend_Click = {
    $AutoValHallA.UseWaitCursor = $true
    if($this.Text -eq 'Link') {
        $script:GamehWnd = GetGameWindow
        if($script:GamehWnd -ne 0) {
            $this.Text = 'Mix'
            _Out "Game window found @ $script:GamehWnd"
        } else {
            _Out "Game window not found!"
            $AutoValHallA.UseWaitCursor = $false
            Return
        }
    }

    # only attempt to send keys if the game window exists
    If ($this.Text -eq 'Mix' -and $script:GamehWnd) {
        $DrinkSelected = $autoValHallA.listDrinks.SelectedItem
        MakeDrink -DrinkName $DrinkSelected
    } else {
        # TODO: Set button text to 'Link' and set appropriate status message
        _Out 'Game process not found.'
        $autoValHallA.btnSend.Text = 'Link'
        # Write-Error -Exception ([System.Management.Automation.CommandNotFoundException]::new("Game process not found."))
        # Exit 4
    }
    $AutoValHallA.UseWaitCursor = $false
}

#region: Select drinks matching tag


$linkTag1_LinkClicked = {
    # reset other link states
    $this.LinkVisited = $true
    $AutoValHallA.linkTag2.LinkVisited = $false
    $AutoValHallA.linkTag3.LinkVisited = $false
    $AutoValHallA.linkClear.LinkVisited = $false
    
    $script:DrinkList.Values | FilterDrinkList -Filter {$_.Tags -contains $this.Text}
}

$linkTag2_LinkClicked = {
    $this.LinkVisited = $true
    $AutoValHallA.linkTag1.LinkVisited = $false
    $AutoValHallA.linkTag3.LinkVisited = $false
    $AutoValHallA.linkClear.LinkVisited = $false
    
    $autoValHallA.listDrinks.Items.Clear()
    $script:DrinkList.Values | FilterDrinkList -Filter {$_.Tags -contains $this.Text}
}

$linkTag3_LinkClicked = {
    $this.LinkVisited = $true
    $AutoValHallA.linkTag1.LinkVisited = $false
    $AutoValHallA.linkTag2.LinkVisited = $false
    $AutoValHallA.linkClear.LinkVisited = $false

    $autoValHallA.listDrinks.Items.Clear()
    $script:DrinkList.Values | FilterDrinkList -Filter {$_.Tags -contains $this.Text}
}

$linkClear_LinkClicked = {
    $this.LinkVisited = $true
    $AutoValHallA.linkTag1.LinkVisited = $false
    $AutoValHallA.linkTag2.LinkVisited = $false
    $AutoValHallA.linkTag3.LinkVisited = $false
    
    FillDrinkList
}
#endregion: Select drinks matching tag

#region: Functions
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
        [Parameter(Position = 0)]
        [string]
        $Message,
        [Parameter(
            Position = 1
        )]
        [Alias('lvl', 'l')]
        [LogLevel]
        $Level = 'Info',
        [switch]
        $WriteToFile
    )

    Begin {
        $Format = '{0:yyyy-MM-dd HH:mm:ss} [{1}] {2}' -f (Get-Date), $Level, $Message
        $Format2 = '{0:yyyy-MM-dd HH:mm:ss} {1}' -f (Get-Date), $Message
        if ($VerbosePreference -ne 'SilentlyContinue') {
            $Level = 'Verbose'
        } elseif ($DebugPreference -ne 'SilentlyContinue') {
            $Level = 'Debug'
        }
    }

    Process {
        switch ($Level) {
            'Info' {
                Write-Host $Format
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
        if ($WriteToFile) {
            Add-Content -Path "$PSScriptRoot\AutoValHallA.log" -Value $Format
        }
    }
}
#endregion Set up logging

function FillDrinkList {
    $autoValHallA.listDrinks.BeginUpdate()
    $autoValHallA.listDrinks.Items.Clear()
    $autoValHallA.listDrinks.Items.AddRange($script:DrinkList.Values.Name)
    $AutoValHallA.listDrinks.EndUpdate()
}
function FilterDrinkList {
    Param(
        [scriptblock]
        $Filter
    )
    Begin {
        $autoValHallA.listDrinks.BeginUpdate()
        $autoValHallA.listDrinks.Items.Clear()
    }
    Process {
        $input | Where-Object -FilterScript $Filter | ForEach-Object {
            $autoValHallA.listDrinks.Items.Add($_.Name) | Out-Null
        }
    }
    End {
        $autoValHallA.listDrinks.EndUpdate()
    }
}

function GetGameWindow {
    # initial check for running game process
    $hWnd = Get-AU3WinHandle -Title 'VA-11 Hall-A: Cyberpunk Bartender Action'
    if ($hWnd -ne 0) {
        _out "Game window found @ $hWnd"
    } else {
        _out 'Game window not found with Get-AU3WinHandle. Trying by process MainWindowHandle...'
        $GameProcess = Get-Process 'VA-11 Hall A' -ea 0 # title: "VA-11 Hall-A: Cyberpunk Bartender Action"
        $hWnd = $GameProcess.MainWindowHandle
        if($hWnd) {
            _out "Game window found @ $hWnd from PID $($GameProcess.Id), Title $($GameProcess.MainWindowTitle)"
        }
    }

    If ($hWnd -ne 0) {
        _Out "Game process found @ $hWnd"
        $autoValHallA.btnSend.Text = 'Mix'
        $autoValHallA.btnSend.Enabled = $true
    } else {
        _Out 'Game process not found.'
        $autoValHallA.btnSend.Text = 'Link'
        # Write-Error -Exception ([System.Management.Automation.CommandNotFoundException]::new("Game process not found."))
        # Exit 4
    }
    Return $hWnd
}

function MakeDrink {
    param (
        [string]
        $DrinkName
    )

    $Drink = $script:DrinkList.Values | Where-Object { $_.Name -eq $DrinkName }

    # set up the wait time for blended drinks
    if ($Drink.Blend) {
        $SleepWait = 3200
    } else {
        # otherwise, stopping immediately is fine
        $SleepWait = 1000
    }

    # send keys
    if ($Drink.Ingredients.Karmotrine -eq 'Optional') {
        # send chars with a 0 aren't sent
        $SendString = '{{q {0}}}{{w {1}}}{{e {2}}}{{r {3}}}' -f $Drink.Ingredients.Adelhyde, $Drink.Ingredients.BronsonExtract, $Drink.Ingredients.PowderedDelta, $Drink.Ingredients.Flanergide
        # Optional karmotrine setting should be updated when the UI text changes
        if (!$script:OptionalKarmotrine) {
            $script:OptionalKarmotrine = $autoValHallA.txtKarmotrine.Text
        }
        $SendString += "{t $script:OptionalKarmotrine}"
    } else {
        $SendString = '{{q {0}}}{{w {1}}}{{e {2}}}{{r {3}}}{{t {3}}}' -f $Drink.Ingredients.Adelhyde, $Drink.Ingredients.BronsonExtract, $Drink.Ingredients.PowderedDelta, $Drink.Ingredients.Flanergide, $Drink.Ingredients.Karmotrine
    }

    _out "Sending keys for $DrinkName`: $SendString"

    # disable button until mixing is done
    $AutoValHallA.btnSend.Enabled = $false

    _out 'Attempting Assert-AU3WinActive...'
    $GameWindow = Assert-AU3WinActive -WinHandle $script:GamehWnd
    _Out "Assert-AU3WinActive result: $GameWindow"

    # this is necessary as Assert-AU3WinActive doesn't want to work
    [Win32]::SetForegroundWindow($script:GamehWnd)

    # start mixing
    Send-AU3Key $SendString
    if ($drink.Iced) {
        Send-AU3Key 'a'
    }
    if ($drink.Aged) {
        Send-AU3Key 's'
    }

    Start-Sleep -ms 500

    Send-AU3Key '{SPACE}'

    # sleep longer for blended drinks
    Start-Sleep -ms $SleepWait

    Send-AU3Key '{SPACE}'

    # re-enable send button
    $AutoValHallA.btnSend.Enabled = $true
}

#endregion: Functions

<#region alternate win activation
$GameWindowPos = Get-AU3WinPos($hWnd)

$iTargetX = $GameWindowPos[0] + 510
$iTargetY = $GameWindowPos[1] + 340

_Out ("Win x: " + $iTargetX + ", y: " + $iTargetY)
#endregion alternate win activation
#>

#region Constants
_out "Setting up ingredient list"
$script:IngredientList = @{
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

# drink data for binding
$private:DrinkData = @(
    [pscustomobject]@{
        Name = 'Bad Touch'
        Ingredients = [pscustomobject]@{
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
    [pscustomobject]@{
        Name = 'Beer'
        Ingredients = [pscustomobject]@{
            Adelhyde       = 1
            BronsonExtract = 2
            PowderedDelta  = 1
            Flanergide     = 2
            Karmotrine     = 4
        }
        Iced = $false
        Aged = $false
        Blend = $false
        Tags = @('Bubbly', 'Classy', 'Vintage')
        Price = 200
    }
    [pscustomobject]@{
        Name        = 'Mercuryblast'
        Ingredients = [pscustomobject]@{
            Adelhyde       = 1
            BronsonExtract = 1
            PowderedDelta  = 3
            Flanergide     = 3
            Karmotrine     = 2
        }
        Iced        = $true
        Aged        = $false
        Blend       = $true
        Tags        = @('sour', 'classy', 'burning')
        Price       = 250
    }
)

_out "Setting up drink list"
$script:DrinkList = @{
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
$script:OptionalKarmotrine = 0

# this has to be used instead of Set-Au3WinActive for whatever reason
$script:TypeSetFG = @'
    using System;
    using System.Runtime.InteropServices;
    public class Win32 {
        [DllImport("user32.dll")]
        public static extern bool SetForegroundWindow(IntPtr hWnd);
    }
'@
Add-Type -TypeDefinition $script:TypeSetFG -Language CSharp
#endregion

#region Get AU3 module and window
try {
    _out "Importing AutoItX module" -lvl Verbose
    Add-Type -AssemblyName 'System.Windows.Forms'
    # [assembly]::LoadWithPartialName('System.Windows.Forms')
    Import-Module "$PSScriptRoot\Resources\AutoItX.psd1"
} catch {
    Write-Error -Exception ([System.IO.FileLoadException]::new('Failed to import AutoItX module.', "$PSScriptRoot\Resources\AutoItX.psd1"))
    Exit 2 # file not found return code
}

# Game is locked at 30FPS / ~33.3 ms
Set-AU3Option -Option "SendKeyDelay" -Value 50
#endregion get au3 module and window

# load form
. (Join-Path $PSScriptRoot 'AutoValHallA.designer.ps1')

<# SECTION: DataSource Attempt
$AutoValHallA.BindingSource1.DataSource = $script:DrinkData
$AutoValHallA.listDrinks.DataSource = $AutoValHallA.BindingSource1
$AutoValHallA.listDrinks.DisplayMember = 'Name'
#>

# initial window check
_out "Looking for game window..."
$script:GamehWnd = GetGameWindow

_out "Game window handle: $script:GamehWnd"

FillDrinkList

$AutoValHallA.Show()

while ($AutoValHallA.Visible) {
    [System.Windows.Forms.Application]::DoEvents()
    Start-Sleep -Milliseconds 50
}
