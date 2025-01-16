# DONE: BeforeAll, run Notepad
# DONE: Add Pester mock for GetGameWindow to get Notepad as the active window
# DONE: Check number of drinks and ingredients
# TODO: Select each drink in the list and verify the UI updates correctly
# TODO: Test sendkey strings for each drink, plus Big versions
# TODO: Check optional karmotrine value

BeforeAll {
    # Run the script
    . $PSScriptRoot\AutoValHallA.ps1

    $global:GameTitle = 'notepad'
    $global:Process = Start-Process $global:GameTitle -PassThru
    # this is normally set by GetGameWindow
    # $script:GamehWnd = $Process.MainWindowHandle
}

Describe 'AutoValHallA Tests' {
    # LoadData retrieves the psd1 data from AutoValHallA-Data.psd1 and sets $DrinkList and $IngredientList in the script
    # scope
    Mock 'LoadData' -MockWith {
        $script:AppData = Import-PowerShellDataFile -Path "$PSScriptRoot\AutoValHallA-Data.psd1"
        $script:DrinkList = $script:AppData.Drinks
        $script:IngredientList = $script:AppData.Ingredients
    }
    # GetGameWindow returns the window handle for the given process name (by default, 'Va-11 Hall A')
    Mock 'GetGameWindow' -MockWith {
        $script:GamehWnd = $global:Process.MainWindowHandle
        Return $script:GamehWnd
    }
    
    Context 'LoadData' {
        It 'should contain Options, Ingredients, Properties, and Drinks' {
            $result = LoadData
            $expected = $result.ContainsKey('Options') -and $result.ContainsKey('Ingredients') -and $result.ContainsKey('Properties') -and $result.ContainsKey('Drinks')
            $result | Should -BeExactly $expected
        }
    }
    Context 'GetGameWindow' {
        It 'should return the window handle for the given process' {
            $script:GamehWnd = GetGameWindow 'notepad'
            $script:GamehWnd | Should -BeOfType [IntPtr] | Should -Not -BeNullOrEmpty
        }
    }

    Context 'Form Data' {
        It 'should contain the correct number of drinks' {
            $result = $AutoValHallA.listDrinks.Items.Count
            $expected = $script:DrinkList.Keys.Count
            $result | Should -BeExactly $expected
        }
        It 'should contain the correct number of ingredients' {
            $result = $script:IngredientList.Keys.Count
            $expected = 5
            $result | Should -BeExactly $expected
        }
    }

    Context 'Drink List Filtering' {
        AfterEach {
            $AutoValHallA.textMain.Text = ''
        }

        It 'Filters Drink List by Name' {
            $AutoValHallA.textMain.Text = "Piano"
            # is this needed to trigger the event?
            $textMain_TextChanged.InvokeReturnAsIs()
            $AutoValHallA.listDrinks.Items.Count | Should -BeExactly 2
            # Check if the list contains only the selected item(s)
        }

        It 'Filters Drink List by Tag' {
            # FilterDrinkList -Filter {$_.Tags -contains 'Classy'}
            $AutoValHallA.listDrinks.SelectedValue = 'Bad Touch'
            $AutoValHallA.linkTag1.PerformClick()
            # $linkTag1_LinkClicked.InvokeReturnAsIs()
            # Check if the list contains only drinks with "Tag1"
            $DrinkList['Bad Touch'].Tags | Should -Contain 'Classy'
        }
    }

    Context 'Advanced Form Testing' {
        $AutoValHallA = [System.Windows.Forms.Application]::OpenForms['AutoValHallA']
        It 'should have the correct number of drinks' {
            $AutoValHallA.listDrinks.Items.Count | Should -BeExactly $DrinkList.Keys.Count
        }
        It 'should update the ingredients list when a drink is selected' {
            foreach($Drink in $DrinkList.Keys) {
                $AutoValHallA.listDrinks.SelectedIndex = $AutoValHallA.listDrinks.FindString($Drink)
                $AutoValHallA.listDrinks.SelectedItem = $Drink
                # $AutoValHallA.listDrinks_SelectedIndexChanged($null, $null)
                # $AutoValHallA.IngredientsList.Items.Count | Should -BeExactly 2
                $AutoValHallA.txtAdelhyde.Text | Should -BeExactly $DrinkList[$Drink].Ingredients.Adelhyde
                $AutoValHallA.txtBronsonExtract.Text | Should -BeExactly $DrinkList[$Drink].Ingredients.BronsonExtract
                $AutoValHallA.txtPowderedDelta.Text | Should -BeExactly $DrinkList[$Drink].Ingredients.PowderedDelta
                $AutoValHallA.txtFlanergide.Text | Should -BeExactly $DrinkList[$Drink].Ingredients.Flanergide
                if($DrinkList[$Drink].Ingredients.Karmotrine -eq 'Optional') {
                    $AutoValHallA.txtKarmotrine.Text | Should -Not -BeNullOrEmpty
                    $AutoValHallA.cbKarmotrine.Checked | Should -Be $false
                } else {
                    $AutoValHallA.txtKarmotrine.Text | Should -BeExactly $DrinkList[$Drink].Ingredients.Karmotrine
                    $AutoValHallA.cbKarmotrine.Checked | Should -Be $true
                }
            }
        }
    }
    
    It 'should handle errors gracefully' {
        Mock Get-Data -MockWith { throw 'error' }
        { Get-Data } | Should -Throw 'error'
    }
}

AfterAll {
    $global:Process | Stop-Process
}