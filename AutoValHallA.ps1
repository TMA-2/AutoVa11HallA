#region UI Functions
<# NOTE: Currently unused
$btnSend_KeyPress = {
    _out "btnSend_KeyPress entered. Input: $($input.GetType())" -lvl Verbose
    if($input.KeyChar -eq 'Enter') {
        # Forward to Click event
        .$btnSend_Click
    }
}

$textMain_KeyPress = {
    _out "textMain_KeyPress entered. Input: $($input.GetType())" -lvl Verbose
    # focus on the ListView if either arrow key is pressed
    if($input.KeyChar -eq 'Up' -or $input.KeyChar -eq 'Down') {
        $AutoValHallA.listDrinks.Focus()
    }
}
#>

$textMain_DoubleClick = {
    $this.Text = ""
    $AutoValHallA.linkTag1.LinkVisited = $false
    $AutoValHallA.linkTag2.LinkVisited = $false
    $AutoValHallA.linkTag3.LinkVisited = $false
}

$listDrinks_SelectedValueChanged = {
    # set selected drink
    $SelectedDrink = $script:DrinkList.Values | ? {$_.Name -eq $this.SelectedItem}
    # if Big is checked, double each ingredient
    # BUG: Certain drinks /show/ doubled ingredients when selected, but the internal values are correct...
    #   - Bleeding Jane
    #   - Crevice Spike
    #   - Grizzly Temple
    #   - Marsblast
    #   - Sunshine Cloud
    $BigDrink = if($AutoValHallA.cbBig.Checked -eq $true) { 2 } else { 1 }
    $AutoValHallA.SuspendLayout()
    # set ingredient amounts
    $AutoValHallA.txtAdelhyde.SuspendLayout()
    $AutoValHallA.txtBronsonExtract.SuspendLayout()
    $AutoValHallA.txtPowderedDelta.SuspendLayout()
    $AutoValHallA.txtFlanergide.SuspendLayout()
    $AutoValHallA.txtKarmotrine.SuspendLayout()
    
    $AutoValHallA.txtAdelhyde.Text = [int]$SelectedDrink.Ingredients.Adelhyde * $BigDrink
    $AutoValHallA.txtBronsonExtract.Text = [int]$SelectedDrink.Ingredients.BronsonExtract * $BigDrink
    $AutoValHallA.txtPowderedDelta.Text = [int]$SelectedDrink.Ingredients.PowderedDelta * $BigDrink
    $AutoValHallA.txtFlanergide.Text = [int]$SelectedDrink.Ingredients.Flanergide * $BigDrink
    # _Out ('Adelhyde: {0}, Big: {1}, Result: {2}' -f $SelectedDrink.Ingredients.Adelhyde, $BigDrink, $AutoValHallA.txtAdelhyde.Text) -lvl Verbose
    _Out "Adelhyde text: $($AutoValHallA.txtAdelhyde.Text), Lines[0]: $($AutoValHallA.txtAdelhyde.Lines[0]), ToString: $($AutoValHallA.txtAdelhyde.ToString())" -lvl Verbose
    # set karmotrine amount
    if($SelectedDrink.Ingredients.Karmotrine -eq 'Optional') {
        $AutoValHallA.cbKarmotrine.Checked = $false
        $AutoValHallA.cbKarmotrine.ReadOnly = $false
        $AutoValHallA.txtKarmotrine.Text = $script:OptionalKarmotrine
        $AutoValHallA.txtKarmotrine.ReadOnly = $false
    } else {
        $AutoValHallA.cbKarmotrine.Checked = $true
        $AutoValHallA.cbKarmotrine.ReadOnly = $true
        $AutoValHallA.txtKarmotrine.ReadOnly = $true
        $AutoValHallA.txtKarmotrine.Text = [int]$SelectedDrink.Ingredients.Karmotrine * $BigDrink
    }
    # set price
    $AutoValHallA.txtPrice.Text = $SelectedDrink.Price
    # set drink mix properties
    $AutoValHallA.cbIced.Checked = $SelectedDrink.Iced
    $AutoValHallA.cbAged.Checked = $SelectedDrink.Aged
    $AutoValHallA.cbBlended.Checked = $SelectedDrink.Blend
    # set tag text
    $AutoValHallA.linkTag1.Text = $SelectedDrink.Tags[0]
    $AutoValHallA.linkTag2.Text = $SelectedDrink.Tags[1]
    $AutoValHallA.linkTag3.Text = $SelectedDrink.Tags[2]

    # Retain last visited tag state
    switch ($script:SelectedTag) {
        $AutoValHallA.linkTag1.Text {
            $AutoValHallA.LinkTag1.LinkVisited = $true
        }
        $AutoValHallA.linkTag2.Text {
            $AutoValHallA.linkTag2.LinkVisited = $true
        }
        $AutoValHallA.linkTag3.Text {
            $AutoValHallA.linkTag3.LinkVisited = $true
        }
        Default {
            $AutoValHallA.linkTag1.LinkVisited = $false
            $AutoValHallA.linkTag2.LinkVisited = $false
            $AutoValHallA.linkTag3.LinkVisited = $false
        }
    }
    $AutoValHallA.txtAdelhyde.ResumeLayout()
    $AutoValHallA.txtBronsonExtract.ResumeLayout()
    $AutoValHallA.txtPowderedDelta.ResumeLayout()
    $AutoValHallA.txtFlanergide.ResumeLayout()
    $AutoValHallA.txtKarmotrine.ResumeLayout()
    $AutoValHallA.ResumeLayout()
}

$textMain_TextChanged = {
    $Text = $this.Text
    # Garbage attempted data binding
    # $AutoValHallA.BindingSource1.Filter = "Name LIKE '*$SelectedDrink*'"
    
    $AutoValHallA.UseWaitCursor = $true
    $script:DrinkList.Values | FilterDrinkList -Filter {$_.Name -match $Text -or $_.Tags -match $Text}
    $AutoValHallA.UseWaitCursor = $false

    <# $autoValHallA.listDrinks.Items.Clear()
    $script:DrinkList.Values | Where-Object {$_.Name -like "*$SelectedDrink*"} | ForEach-Object {
        $autoValHallA.listDrinks.Items.Add($_.Name)
    } #>
}

$txtKarmotrine_ValueChanged = {
    # if enabled, auto-check and update optional karmotrine value
    if($this.ReadOnly -eq $false) {
        $script:OptionalKarmotrine = [int]$this.Text
    }
}

$cbKarmotrine_CheckedChanged = {
    if($this.Checked) {
        $AutoValHallA.txtKarmotrine.ReadOnly = $false
        # $AutoValHallA.txtKarmotrine.Text = $script:OptionalKarmotrine
    } else {
        $AutoValHallA.txtKarmotrine.ReadOnly = $true
        # $AutoValHallA.txtKarmotrine.Text = 0
    }
}

$cbBig_CheckedChanged = {
    $AutoValHallA.groupBox2.SuspendLayout()
    $SelectedDrink = $script:DrinkList.Values | ? {$_.Name -eq $AutoValHallA.listDrinks.SelectedItem}
    
    [int]$BigDrink = 1
    if($this.Checked) { $BigDrink = 2 } else { $BigDrink = 1 }
    
    $AutoValHallA.txtAdelhyde.Text = [int]$SelectedDrink.Ingredients.Adelhyde * $BigDrink
    $AutoValHallA.txtBronsonExtract.Text = [int]$SelectedDrink.Ingredients.BronsonExtract * $BigDrink
    $AutoValHallA.txtPowderedDelta.Text = [int]$SelectedDrink.Ingredients.PowderedDelta * $BigDrink
    $AutoValHallA.txtFlanergide.Text = [int]$SelectedDrink.Ingredients.Flanergide * $BigDrink
    $AutoValHallA.txtKarmotrine.Text = [int]$AutoValHallA.txtKarmotrine.Text * $BigDrink
    
    $AutoValHallA.groupBox2.ResumeLayout()
}

$btnSend_Click = {
    if($this.Text -eq 'Link') {
        $script:GamehWnd = GetGameWindow
        if($script:GamehWnd -ne 0 -and $null -ne $script:GamehWnd) {
            $this.Text = 'Mix'
            _Out "Game window found @ $script:GamehWnd"
        } else {
            _Out "Game window not found!"
            Return
        }
    }
    
    # only attempt to send keys if the game window exists
    $AutoValHallA.UseWaitCursor = $true
    If ($this.Text -eq 'Mix' -and $script:GamehWnd) {
        $DrinkSelected = $autoValHallA.listDrinks.SelectedItem
        # do nothing if no drink is selected
        if($DrinkSelected -eq $null) {
            _Out "No drink selected. Skipping MakeDrink call."
            $AutoValHallA.UseWaitCursor = $false
            Return
        } else {
            MakeDrink -DrinkName $DrinkSelected
        }
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
    $script:SelectedTag = $this.Text
    # reset other link states
    $this.LinkVisited = $true
    $AutoValHallA.linkTag2.LinkVisited = $false
    $AutoValHallA.linkTag3.LinkVisited = $false
    
    $script:DrinkList.Values | FilterDrinkList -Filter {$_.Tags -contains $this.Text}
}

$linkTag2_LinkClicked = {
    $script:SelectedTag = $this.Text
    $this.LinkVisited = $true
    $AutoValHallA.linkTag1.LinkVisited = $false
    $AutoValHallA.linkTag3.LinkVisited = $false
    
    $autoValHallA.listDrinks.Items.Clear()
    $script:DrinkList.Values | FilterDrinkList -Filter {$_.Tags -contains $this.Text}
}

$linkTag3_LinkClicked = {
    $script:SelectedTag = $this.Text
    $this.LinkVisited = $true
    $AutoValHallA.linkTag1.LinkVisited = $false
    $AutoValHallA.linkTag2.LinkVisited = $false

    $autoValHallA.listDrinks.Items.Clear()
    $script:DrinkList.Values | FilterDrinkList -Filter {$_.Tags -contains $this.Text}
}

$linkClear_LinkClicked = {
    $script:SelectedTag = ""
    $AutoValHallA.linkTag1.LinkVisited = $false
    $AutoValHallA.linkTag2.LinkVisited = $false
    $AutoValHallA.linkTag3.LinkVisited = $false
    
    # FillDrinkList
    $script:DrinkList.Values | FilterDrinkList -Filter { $_.Name -match $AutoValHallA.textMain.Text }
}
#endregion: Select drinks matching tag
#endregion: UI Functions

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
        [Parameter(
            ValueFromPipeline)]
        [string]
        $Message,
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
    # $hWnd = Get-AU3WinHandle -Title 'VA-11 Hall-A: Cyberpunk Bartender Action'
    # _out 'Game window not found with Get-AU3WinHandle. Trying by process MainWindowHandle...' -lvl Warning
    # window title: "VA-11 Hall-A: Cyberpunk Bartender Action"
    $GameProcess = Get-Process 'VA-11 Hall A' -ea 0
    $hWnd = $GameProcess.MainWindowHandle
    if($null -ne $hWnd) {
        _out "Game window found @ $hWnd from PID $($GameProcess.Id), Title $($GameProcess.MainWindowTitle)" -lvl Verbose
    } else {
        _out "Game window not found." -lvl Warning
        Return
    }

    If ($hWnd -ne 0 -and $null -ne $hWnd) {
        _Out "Game process found @ $hWnd [$($hWnd.GetType())]" -lvl Verbose
        $autoValHallA.btnSend.Text = 'Mix'
        Return $hWnd
    } else {
        _Out 'Game process not found.' -lvl Warning
        $autoValHallA.btnSend.Text = 'Link'
        Return
        # Write-Error -Exception ([System.Management.Automation.CommandNotFoundException]::new("Game process not found."))
        # Exit 4
    }
}

function MakeDrink {
    param (
        [string]
        $DrinkName
    )

    $Drink = $script:DrinkList.Values | Where-Object { $_.Name -eq $DrinkName }

    # set up the wait time for blended drinks
    if ($Drink.Blend) {
        $SleepWait = 6000
    } else {
        # otherwise, stopping immediately is fine
        $SleepWait = 1000
    }

    # _Out "Karmotrine value: $($Drink.Ingredients.Karmotrine), UI: $($AutoValHallA.txtKarmotrine.Text), Pref: $script:OptionalKarmotrine" -lvl Verbose

    # send keys
    # send chars with a 0 aren't sent
    $SendString = '{{q {0}}}{{w {1}}}{{e {2}}}{{r {3}}}' -f $AutoValHallA.txtAdelhyde.Text, $AutoValHallA.txtBronsonExtract.Text, $AutoValHallA.txtPowderedDelta.Text, $AutoValHallA.txtFlanergide.Text
    if ($Drink.Ingredients.Karmotrine -eq 'Optional') {
        # Optional karmotrine setting should be updated when the UI text changes
        if ($script:OptionalKarmotrine -gt 0 -and $AutovAlHallA.cbKarmotrine.Checked) {
            $SendString += "{t $script:OptionalKarmotrine}"
        }
    } else {
        $SendString += "{t $($AutoValHallA.txtKarmotrine.Text)}"
    }

    _out "Sending keys for $DrinkName`: $SendString"

    # disable button until mixing is done
    $AutoValHallA.btnSend.Enabled = $false

    # _out 'Attempting Assert-AU3WinActive...' -lvl Verbose
    # $GameWindow = Assert-AU3WinActive -WinHandle $script:GamehWnd
    # _Out "Assert-AU3WinActive result: $GameWindow" -lvl Verbose

    # this is necessary as Assert-AU3WinActive doesn't want to work
    if([User32]::SetForegroundWindow($script:GamehWnd) -eq $false) {
        _Out "Failed to set game window to foreground!" -lvl Error
        Return
    }

    # start mixing
    for($i = 0; $i -lt $AutoValHallA.txtAdelhyde.Text; $i++) {
        $SendKey = $IngredientList.Values.Where{$_.Name -eq 'Adelhyde'}.Key
        [System.Windows.Forms.SendKeys]::Send($SendKey)
    }
    for($i = 0; $i -lt $AutoValHallA.txtBronsonExtract.Text; $i++) {
        $SendKey = $IngredientList.Values.Where{$_.Name -eq 'Bronson Extract'}.Key
        [System.Windows.Forms.SendKeys]::Send($SendKey)
    }
    for($i = 0; $i -lt $AutoValHallA.txtPowderedDelta.Text; $i++) {
        $SendKey = $IngredientList.Values.Where{$_.Name -eq 'Powdered Delta'}.Key
        [System.Windows.Forms.SendKeys]::Send($SendKey)
    }
    for($i = 0; $i -lt $AutoValHallA.txtFlanergide.Text; $i++) {
        $SendKey = $IngredientList.Values.Where{$_.Name -eq 'Flanergide'}.Key
        [System.Windows.Forms.SendKeys]::Send($SendKey)
    }
    for($i = 0; $i -lt $AutoValHallA.txtKarmotrine.Text; $i++) {
        $SendKey = $IngredientList.Values.Where{$_.Name -eq 'Karmotrine'}.Key
        [System.Windows.Forms.SendKeys]::Send($SendKey)
    }
    [System.Windows.Forms.SendKeys]::SendWait($SendString)
    # Send-AU3Key $SendString
    if ($drink.Iced) {
        # Send-AU3Key 'a'
        [System.Windows.Forms.SendKeys]::SendWait('a')
    }
    if ($drink.Aged) {
        # Send-AU3Key 's'
        [System.Windows.Forms.SendKeys]::SendWait('s')
    }

    Start-Sleep -Milliseconds 500

    # Send-AU3Key '{SPACE}'
    [System.Windows.Forms.SendKeys]::SendWait(' ')
    
    # sleep longer for blended drinks
    Start-Sleep -Milliseconds $SleepWait
    
    # Send-AU3Key '{SPACE}'
    [System.Windows.Forms.SendKeys]::SendWait(' ')

    # re-enable send button
    $AutoValHallA.btnSend.Enabled = $true
}
function AlignWindow {
    # $GameWindowPos = Get-AU3WinPos -WinHandle $script:GamehWnd
    $GameWindowPos = New-Object 'User32+RECT'
    if([User32]::GetWindowRect($script:GamehWnd, [ref]$GameWindowPos)) {
        _out "Game window position: Left: $($GameWindowPos.Left), Top: $($GameWindowPos.Top), Right: $($GameWindowPos.Right)"
    } else {
        _out "Failed to get game window position." -lvl Warning
        Return
    }
    
    $iTargetX = $GameWindowPos.Right + 2
    $iTargetY = $GameWindowPos.Top

    # TODO: Attempt to keep form to the right of the game window
    $AutoValHallA.Location.X = $iTargetX
    $AutoValHallA.Location.Y = $iTargetY
    # $AutoValHallA.TopMost = $true
}

#endregion: Functions

#region Constants
_out "Setting up drink list"
$script:DrinkList = Import-PowerShellDataFile "$PSScriptRoot\DrinkList.psd1"

# this is currently unused
$script:IngredientList = $script:DrinkList.Ingredients

# user preferences
$script:OptionalKarmotrine = 0
$script:SelectedTag = ""
#endregion Constants

#region: Load assemblies
# this has to be used instead of Set-Au3WinActive because AutoItX is temperamental
$script:TypeSetFore = @'
    using System;
    using System.Runtime.InteropServices;
    public class User32 {
        [DllImport("user32.dll")]
        public static extern bool SetForegroundWindow(IntPtr hWnd);
    }
'@
$script:TypeGetPos = @'
    using System;
    using System.Runtime.InteropServices;
    public class User32 {
        [StructLayout(LayoutKind.Sequential)]
        public struct RECT {
            public int Left;
            public int Top;
            public int Right;
            public int Bottom;
        }
        [DllImport("user32.dll")]
        // public static extern bool GetWindowRect(IntPtr hWnd, ref RECT rect);
        public static extern bool GetWindowRect(IntPtr hWnd, out RECT lpRect);
    }
'@

try {
    _out "Adding Windows Forms assembly and User32 types" -lvl Verbose
    Add-Type -AssemblyName 'System.Windows.Forms'
    Add-Type -TypeDefinition $script:TypeSetFore -Language CSharp
    Add-Type -TypeDefinition $script:TypeGetPos -Language CSharp
    # Import-Module "$PSScriptRoot\Resources\AutoItX.psd1"
} catch {
    $Err = $_
    # Write-Error -Exception ([System.IO.FileLoadException]::new('Failed to import AutoItX module.', "$PSScriptRoot\Resources\AutoItX.psd1"))
    Write-Error "Exception $($Err.Exception.HResult) loading types > $($Err.Exception.Message)" -Exception $Err.Exception
    Exit 2 # file not found return code
}

# Game is locked at 30FPS / ~33.3 ms
# Set-AU3Option -Option "SendKeyDelay" -Value 50
#endregion: Load assemblies

$AutoValHallA_Activated = {
    # _Out "This is where window alignment would be... if it worked."
    AlignWindow
}

$AutoValHallA_FormClosing = {
    $VerbosePreference = 'SilentlyContinue'
    $script:sw.Stop()

    _out "Closing AutoValHallA with return $($AutoValHallA.DialogResult) after $($sw.Elapsed.ToString('hh\:mm\:ss'))"

    $AutoValHallA.Dispose()
}

$AutoValHallA_Load = {
    # initial window check
    _out "Initial check for game window..."
    $script:GamehWnd = GetGameWindow

    if($script:GamehWnd) {
        _out "Handle found: $script:GamehWnd"
    } else {
        _out "Window not found. Waiting for user to link game window." -lvl Warning
    }

    _out "Populating initial drink list"
    FillDrinkList
    
    # TODO: Set up txtMain with autocompletion
    $AutoValHallA.textMain.AutoCompleteMode = [System.Windows.Forms.AutoCompleteMode]::Append
    $AutoValHallA.textMain.AutoCompleteSource = [System.Windows.Forms.AutoCompleteSource]::CustomSource
    $AutoValHallA.textMain.AutoCompleteCustomSource.AddRange($script:DrinkList.Values.Name)

    $script:ProcessChecked = $false
    $script:sw = [System.Diagnostics.Stopwatch]::StartNew()
}

# load form
. (Join-Path $PSScriptRoot 'AutoValHallA.designer.ps1')

<# SECTION: DataSource Attempt
$AutoValHallA.BindingSource1.DataSource = $script:DrinkData
$AutoValHallA.listDrinks.DataSource = $AutoValHallA.BindingSource1
$AutoValHallA.listDrinks.DisplayMember = 'Name'
#>

$ErrorActionPreference = 'SilentlyContinue'
$VerbosePreference = 'Continue'

# NOTE: Moved to Autovalhalla_load

_Out "Starting form"
$AutoValHallA.Show()
$AutoValHallA.Focus()


while ($AutoValHallA.Visible) {
    [System.Windows.Forms.Application]::DoEvents()
    Start-Sleep -Milliseconds 30
    
    # update window placement every minute
    if($script:GamehWnd -and $script:sw.Elapsed.Seconds -eq 1 -and $script:sw.Elapsed.Milliseconds -lt 60) {
        AlignWindow
    }

    # check for game window every 5 minutes
    if($script:sw.Elapsed.Minutes%5 -eq 0 -and $script:sw.Elapsed.Milliseconds -lt 60 -and !$ProcessChecked) {
        $GameProcess = Get-Process "VA-11 Hall A" -ea SilentlyContinue
        # process found
        if($GameProcess) {
            # handle still valid
            if($GameProcess.MainWindowHandle -ne $script:GamehWnd) {
                # handle changed
                _Out "Game window handle changed from $script:GamehWnd to $($GameProcess.MainWindowHandle)" -lvl Verbose
                $script:GamehWnd = $GameProcess.MainWindowHandle
            }
        } else {
            _Out "Game window not found." -lvl Warning
            $AutoValHallA.btnSend.Text = 'Link'
        }
        $ProcessChecked = $true
    } elseif([math]::Floor($sw.Elapsed.TotalSeconds)%360 -eq 0) {
        # reset handle check every 10 minutes
        $ProcessChecked = $false
    }
}

