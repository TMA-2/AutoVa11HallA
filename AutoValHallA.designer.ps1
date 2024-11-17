[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$AutoValHallA = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.GroupBox]$groupBox1 = $null
[System.Windows.Forms.TextBox]$textMain = $null
[System.Windows.Forms.ListBox]$listDrinks = $null
[System.Windows.Forms.Button]$btnSend = $null
[System.Windows.Forms.TextBox]$txtAdelhyde = $null
[System.Windows.Forms.CheckBox]$cbKarmotrine = $null
[System.Windows.Forms.Label]$lblFlanergide = $null
[System.Windows.Forms.Label]$lblPowderedDelta = $null
[System.Windows.Forms.Label]$lblBronsonExt = $null
[System.Windows.Forms.Label]$lblAdelhyde = $null
[System.Windows.Forms.CheckBox]$cbAged = $null
[System.Windows.Forms.CheckBox]$cbIced = $null
[System.Windows.Forms.TextBox]$txtFlanergide = $null
[System.Windows.Forms.TextBox]$txtPowderedD = $null
[System.Windows.Forms.TextBox]$txtBronsonExt = $null
[System.Windows.Forms.LinkLabel]$linkTag3 = $null
[System.Windows.Forms.LinkLabel]$linkTag2 = $null
[System.Windows.Forms.LinkLabel]$linkTag1 = $null
[System.Windows.Forms.ImageList]$imageList1 = $null
[System.ComponentModel.IContainer]$components = $null
[System.Windows.Forms.NumericUpDown]$txtKarmotrine = $null
[System.Windows.Forms.FlowLayoutPanel]$flowLayoutPanel1 = $null
[System.Windows.Forms.GroupBox]$groupBox2 = $null
function InitializeComponent
{
$components = (New-Object -TypeName System.ComponentModel.Container)
$groupBox1 = (New-Object -TypeName System.Windows.Forms.GroupBox)
$textMain = (New-Object -TypeName System.Windows.Forms.TextBox)
$listDrinks = (New-Object -TypeName System.Windows.Forms.ListBox)
$btnSend = (New-Object -TypeName System.Windows.Forms.Button)
$groupBox2 = (New-Object -TypeName System.Windows.Forms.GroupBox)
$flowLayoutPanel1 = (New-Object -TypeName System.Windows.Forms.FlowLayoutPanel)
$linkTag1 = (New-Object -TypeName System.Windows.Forms.LinkLabel)
$linkTag2 = (New-Object -TypeName System.Windows.Forms.LinkLabel)
$linkTag3 = (New-Object -TypeName System.Windows.Forms.LinkLabel)
$txtKarmotrine = (New-Object -TypeName System.Windows.Forms.NumericUpDown)
$cbAged = (New-Object -TypeName System.Windows.Forms.CheckBox)
$cbIced = (New-Object -TypeName System.Windows.Forms.CheckBox)
$txtFlanergide = (New-Object -TypeName System.Windows.Forms.TextBox)
$txtPowderedD = (New-Object -TypeName System.Windows.Forms.TextBox)
$txtBronsonExt = (New-Object -TypeName System.Windows.Forms.TextBox)
$txtAdelhyde = (New-Object -TypeName System.Windows.Forms.TextBox)
$cbKarmotrine = (New-Object -TypeName System.Windows.Forms.CheckBox)
$lblFlanergide = (New-Object -TypeName System.Windows.Forms.Label)
$lblPowderedDelta = (New-Object -TypeName System.Windows.Forms.Label)
$lblBronsonExt = (New-Object -TypeName System.Windows.Forms.Label)
$lblAdelhyde = (New-Object -TypeName System.Windows.Forms.Label)
$imageList1 = (New-Object -TypeName System.Windows.Forms.ImageList -ArgumentList @($components))
$groupBox1.SuspendLayout()
$groupBox2.SuspendLayout()
$flowLayoutPanel1.SuspendLayout()
([System.ComponentModel.ISupportInitialize]$txtKarmotrine).BeginInit()
$AutoValHallA.SuspendLayout()
#
#groupBox1
#
$groupBox1.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$groupBox1.Controls.Add($textMain)
$groupBox1.Controls.Add($listDrinks)
$groupBox1.Controls.Add($btnSend)
$groupBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]12))
$groupBox1.Name = [System.String]'groupBox1'
$groupBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]210,[System.Int32]268))
$groupBox1.TabIndex = [System.Int32]1
$groupBox1.TabStop = $false
$groupBox1.Text = [System.String]'Drink List'
#
#textMain
#
$textMain.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$textMain.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]6,[System.Int32]20))
$textMain.Name = [System.String]'textMain'
$textMain.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]136,[System.Int32]22))
$textMain.TabIndex = [System.Int32]0
$textMain.Text = [System.String]'Filter'
#
#listDrinks
#
$listDrinks.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$listDrinks.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$listDrinks.FormattingEnabled = $true
$listDrinks.ItemHeight = [System.Int32]15
$listDrinks.Items.AddRange([System.Object[]]@([System.String]'Bad Touch',[System.String]'Beer',[System.String]'Bleeding Jane',[System.String]'etc.'))
$listDrinks.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]6,[System.Int32]46))
$listDrinks.Name = [System.String]'listDrinks'
$listDrinks.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]198,[System.Int32]199))
$listDrinks.TabIndex = [System.Int32]1
#
#btnSend
#
$btnSend.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$btnSend.Enabled = $false
$btnSend.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]148,[System.Int32]19))
$btnSend.Name = [System.String]'btnSend'
$btnSend.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]56,[System.Int32]23))
$btnSend.TabIndex = [System.Int32]2
$btnSend.Text = [System.String]'Link'
$btnSend.UseVisualStyleBackColor = $true
$btnSend.add_Click($btnSend_Click)
#
#groupBox2
#
$groupBox2.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$groupBox2.Controls.Add($flowLayoutPanel1)
$groupBox2.Controls.Add($txtKarmotrine)
$groupBox2.Controls.Add($cbAged)
$groupBox2.Controls.Add($cbIced)
$groupBox2.Controls.Add($txtFlanergide)
$groupBox2.Controls.Add($txtPowderedD)
$groupBox2.Controls.Add($txtBronsonExt)
$groupBox2.Controls.Add($txtAdelhyde)
$groupBox2.Controls.Add($cbKarmotrine)
$groupBox2.Controls.Add($lblFlanergide)
$groupBox2.Controls.Add($lblPowderedDelta)
$groupBox2.Controls.Add($lblBronsonExt)
$groupBox2.Controls.Add($lblAdelhyde)
$groupBox2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]286))
$groupBox2.Name = [System.String]'groupBox2'
$groupBox2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]210,[System.Int32]230))
$groupBox2.TabIndex = [System.Int32]2
$groupBox2.TabStop = $false
$groupBox2.Text = [System.String]'Details'
#
#flowLayoutPanel1
#
$flowLayoutPanel1.Controls.Add($linkTag1)
$flowLayoutPanel1.Controls.Add($linkTag2)
$flowLayoutPanel1.Controls.Add($linkTag3)
$flowLayoutPanel1.Dock = [System.Windows.Forms.DockStyle]::Bottom
$flowLayoutPanel1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]189))
$flowLayoutPanel1.Name = [System.String]'flowLayoutPanel1'
$flowLayoutPanel1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]204,[System.Int32]38))
$flowLayoutPanel1.TabIndex = [System.Int32]0
#
#linkTag1
#
$linkTag1.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$linkTag1.AutoSize = $true
$linkTag1.BackColor = [System.Drawing.Color]::Transparent
$linkTag1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]10,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$linkTag1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]0))
$linkTag1.Name = [System.String]'linkTag1'
$linkTag1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]41,[System.Int32]19))
$linkTag1.TabIndex = [System.Int32]9
$linkTag1.TabStop = $true
$linkTag1.Text = [System.String]'Tag 1'
$linkTag1.add_LinkClicked($linkTag1_LinkClicked)
#
#linkTag2
#
$linkTag2.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$linkTag2.AutoSize = $true
$linkTag2.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]10,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$linkTag2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]50,[System.Int32]0))
$linkTag2.Name = [System.String]'linkTag2'
$linkTag2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]41,[System.Int32]19))
$linkTag2.TabIndex = [System.Int32]10
$linkTag2.TabStop = $true
$linkTag2.Text = [System.String]'Tag 2'
$linkTag2.add_LinkClicked($linkTag2_LinkClicked)
#
#linkTag3
#
$linkTag3.AutoSize = $true
$linkTag3.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]10,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$linkTag3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]97,[System.Int32]0))
$linkTag3.Name = [System.String]'linkTag3'
$linkTag3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]41,[System.Int32]19))
$linkTag3.TabIndex = [System.Int32]11
$linkTag3.TabStop = $true
$linkTag3.Text = [System.String]'Tag 3'
$linkTag3.add_LinkClicked($linkTag3_LinkClicked)
#
#txtKarmotrine
#
$txtKarmotrine.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$txtKarmotrine.BackColor = [System.Drawing.Color]::LightCyan
$txtKarmotrine.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$txtKarmotrine.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Consolas',[System.Single]10,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$txtKarmotrine.InterceptArrowKeys = $false
$txtKarmotrine.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]158,[System.Int32]113))
$txtKarmotrine.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]2,[System.Int32]1,[System.Int32]2,[System.Int32]1))
$txtKarmotrine.Maximum = [System.Int32]10
$txtKarmotrine.Name = [System.String]'txtKarmotrine'
$txtKarmotrine.RightToLeft = [System.Windows.Forms.RightToLeft]::Yes
$txtKarmotrine.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]46,[System.Int32]23))
$txtKarmotrine.TabIndex = [System.Int32]8
$txtKarmotrine.add_ValueChanged($txtKarmotrine_ValueChanged)
#
#cbAged
#
$cbAged.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$cbAged.AutoSize = $true
$cbAged.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]10,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$cbAged.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]184)),([System.Int32]([System.Byte][System.Byte]81)),([System.Int32]([System.Byte][System.Byte]165)))

$cbAged.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]8,[System.Int32]157))
$cbAged.Name = [System.String]'cbAged'
$cbAged.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]64,[System.Int32]23))
$cbAged.TabIndex = [System.Int32]3
$cbAged.Text = [System.String]'Aged'
$cbAged.UseVisualStyleBackColor = $true
$cbAged.add_CheckedChanged($cbAged_CheckedChanged)
#
#cbIced
#
$cbIced.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$cbIced.AutoSize = $true
$cbIced.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]10,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$cbIced.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]33)),([System.Int32]([System.Byte][System.Byte]135)),([System.Int32]([System.Byte][System.Byte]170)))

$cbIced.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]8,[System.Int32]136))
$cbIced.Name = [System.String]'cbIced'
$cbIced.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]56,[System.Int32]23))
$cbIced.TabIndex = [System.Int32]2
$cbIced.Text = [System.String]'Iced'
$cbIced.UseVisualStyleBackColor = $true
#
#txtFlanergide
#
$txtFlanergide.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$txtFlanergide.BackColor = [System.Drawing.Color]::Honeydew
$txtFlanergide.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$txtFlanergide.Cursor = [System.Windows.Forms.Cursors]::Arrow
$txtFlanergide.Enabled = $false
$txtFlanergide.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Consolas',[System.Single]10))
$txtFlanergide.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]174,[System.Int32]88))
$txtFlanergide.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]2,[System.Int32]1,[System.Int32]2,[System.Int32]1))
$txtFlanergide.Name = [System.String]'txtFlanergide'
$txtFlanergide.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]30,[System.Int32]23))
$txtFlanergide.TabIndex = [System.Int32]7
$txtFlanergide.TabStop = $false
$txtFlanergide.Text = [System.String]'0'
$txtFlanergide.TextAlign = [System.Windows.Forms.HorizontalAlignment]::Right
$txtFlanergide.add_TextChanged($txtFlanergide_TextChanged)
#
#txtPowderedD
#
$txtPowderedD.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$txtPowderedD.BackColor = [System.Drawing.Color]::LightSteelBlue
$txtPowderedD.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$txtPowderedD.Cursor = [System.Windows.Forms.Cursors]::Default
$txtPowderedD.Enabled = $false
$txtPowderedD.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Consolas',[System.Single]10))
$txtPowderedD.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]174,[System.Int32]64))
$txtPowderedD.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]2,[System.Int32]1,[System.Int32]2,[System.Int32]1))
$txtPowderedD.Name = [System.String]'txtPowderedD'
$txtPowderedD.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]30,[System.Int32]23))
$txtPowderedD.TabIndex = [System.Int32]6
$txtPowderedD.TabStop = $false
$txtPowderedD.Text = [System.String]'0'
$txtPowderedD.TextAlign = [System.Windows.Forms.HorizontalAlignment]::Right
$txtPowderedD.add_TextChanged($txtPowderedD_TextChanged)
#
#txtBronsonExt
#
$txtBronsonExt.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$txtBronsonExt.BackColor = [System.Drawing.Color]::PeachPuff
$txtBronsonExt.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$txtBronsonExt.Cursor = [System.Windows.Forms.Cursors]::Default
$txtBronsonExt.Enabled = $false
$txtBronsonExt.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Consolas',[System.Single]10))
$txtBronsonExt.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]174,[System.Int32]40))
$txtBronsonExt.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]2,[System.Int32]1,[System.Int32]2,[System.Int32]1))
$txtBronsonExt.Name = [System.String]'txtBronsonExt'
$txtBronsonExt.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]30,[System.Int32]23))
$txtBronsonExt.TabIndex = [System.Int32]5
$txtBronsonExt.TabStop = $false
$txtBronsonExt.Text = [System.String]'0'
$txtBronsonExt.TextAlign = [System.Windows.Forms.HorizontalAlignment]::Right
$txtBronsonExt.add_TextChanged($txtBronsonExt_TextChanged)
#
#txtAdelhyde
#
$txtAdelhyde.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$txtAdelhyde.BackColor = [System.Drawing.Color]::RosyBrown
$txtAdelhyde.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$txtAdelhyde.Cursor = [System.Windows.Forms.Cursors]::Default
$txtAdelhyde.Enabled = $false
$txtAdelhyde.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Consolas',[System.Single]10))
$txtAdelhyde.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]174,[System.Int32]16))
$txtAdelhyde.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]2,[System.Int32]2,[System.Int32]2,[System.Int32]1))
$txtAdelhyde.Name = [System.String]'txtAdelhyde'
$txtAdelhyde.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]30,[System.Int32]23))
$txtAdelhyde.TabIndex = [System.Int32]4
$txtAdelhyde.TabStop = $false
$txtAdelhyde.Text = [System.String]'0'
$txtAdelhyde.TextAlign = [System.Windows.Forms.HorizontalAlignment]::Right
$txtAdelhyde.add_TextChanged($txtAdelhyde_TextChanged)
#
#cbKarmotrine
#
$cbKarmotrine.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$cbKarmotrine.AutoSize = $true
$cbKarmotrine.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]64)),([System.Int32]([System.Byte][System.Byte]64)),([System.Int32]([System.Byte][System.Byte]64)))

$cbKarmotrine.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]10,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$cbKarmotrine.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]197)),([System.Int32]([System.Byte][System.Byte]228)),([System.Int32]([System.Byte][System.Byte]228)))

$cbKarmotrine.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]8,[System.Int32]111))
$cbKarmotrine.Name = [System.String]'cbKarmotrine'
$cbKarmotrine.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]104,[System.Int32]23))
$cbKarmotrine.TabIndex = [System.Int32]1
$cbKarmotrine.Text = [System.String]'Karmotrine'
$cbKarmotrine.UseVisualStyleBackColor = $false
$cbKarmotrine.add_CheckedChanged($cbKarmotrine_CheckedChanged)
#
#lblFlanergide
#
$lblFlanergide.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$lblFlanergide.AutoSize = $true
$lblFlanergide.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]10,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$lblFlanergide.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]86)),([System.Int32]([System.Byte][System.Byte]139)),([System.Int32]([System.Byte][System.Byte]40)))

$lblFlanergide.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]8,[System.Int32]88))
$lblFlanergide.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3))
$lblFlanergide.Name = [System.String]'lblFlanergide'
$lblFlanergide.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]80,[System.Int32]19))
$lblFlanergide.TabIndex = [System.Int32]0
$lblFlanergide.Text = [System.String]'Flanergide'
#
#lblPowderedDelta
#
$lblPowderedDelta.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$lblPowderedDelta.AutoSize = $true
$lblPowderedDelta.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]10,[System.Drawing.FontStyle]::Bold))
$lblPowderedDelta.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]135)),([System.Int32]([System.Byte][System.Byte]166)),([System.Int32]([System.Byte][System.Byte]227)))

$lblPowderedDelta.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]8,[System.Int32]64))
$lblPowderedDelta.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3))
$lblPowderedDelta.Name = [System.String]'lblPowderedDelta'
$lblPowderedDelta.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]117,[System.Int32]19))
$lblPowderedDelta.TabIndex = [System.Int32]0
$lblPowderedDelta.Text = [System.String]'Powdered Delta'
#
#lblBronsonExt
#
$lblBronsonExt.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$lblBronsonExt.AutoSize = $true
$lblBronsonExt.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]64)),([System.Int32]([System.Byte][System.Byte]64)),([System.Int32]([System.Byte][System.Byte]64)))

$lblBronsonExt.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]10,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$lblBronsonExt.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]254)),([System.Int32]([System.Byte][System.Byte]199)),([System.Int32]([System.Byte][System.Byte]61)))

$lblBronsonExt.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]8,[System.Int32]40))
$lblBronsonExt.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3))
$lblBronsonExt.Name = [System.String]'lblBronsonExt'
$lblBronsonExt.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]114,[System.Int32]19))
$lblBronsonExt.TabIndex = [System.Int32]0
$lblBronsonExt.Text = [System.String]'Bronson Extract'
#
#lblAdelhyde
#
$lblAdelhyde.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$lblAdelhyde.AutoSize = $true
$lblAdelhyde.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]10,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$lblAdelhyde.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]226)),([System.Int32]([System.Byte][System.Byte]39)),([System.Int32]([System.Byte][System.Byte]67)))

$lblAdelhyde.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]8,[System.Int32]16))
$lblAdelhyde.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3,[System.Int32]0,[System.Int32]3,[System.Int32]3))
$lblAdelhyde.Name = [System.String]'lblAdelhyde'
$lblAdelhyde.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]73,[System.Int32]19))
$lblAdelhyde.TabIndex = [System.Int32]0
$lblAdelhyde.Text = [System.String]'Adelhyde'
#
#imageList1
#
$imageList1.ColorDepth = [System.Windows.Forms.ColorDepth]::Depth8Bit
$imageList1.ImageSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]16,[System.Int32]16))
$imageList1.TransparentColor = [System.Drawing.Color]::Transparent
#
#AutoValHallA
#
$AutoValHallA.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]234,[System.Int32]528))
$AutoValHallA.Controls.Add($groupBox2)
$AutoValHallA.Controls.Add($groupBox1)
$AutoValHallA.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]8.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$AutoValHallA.MaximizeBox = $false
$AutoValHallA.MaximumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]300,[System.Int32]1000))
$AutoValHallA.MinimumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]250,[System.Int32]500))
$AutoValHallA.Name = [System.String]'AutoValHallA'
$AutoValHallA.add_Load($AutoValHallA_Load)
$groupBox1.ResumeLayout($false)
$groupBox1.PerformLayout()
$groupBox2.ResumeLayout($false)
$groupBox2.PerformLayout()
$flowLayoutPanel1.ResumeLayout($false)
$flowLayoutPanel1.PerformLayout()
([System.ComponentModel.ISupportInitialize]$txtKarmotrine).EndInit()
$AutoValHallA.ResumeLayout($false)
Add-Member -InputObject $AutoValHallA -Name groupBox1 -Value $groupBox1 -MemberType NoteProperty
Add-Member -InputObject $AutoValHallA -Name textMain -Value $textMain -MemberType NoteProperty
Add-Member -InputObject $AutoValHallA -Name listDrinks -Value $listDrinks -MemberType NoteProperty
Add-Member -InputObject $AutoValHallA -Name btnSend -Value $btnSend -MemberType NoteProperty
Add-Member -InputObject $AutoValHallA -Name txtAdelhyde -Value $txtAdelhyde -MemberType NoteProperty
Add-Member -InputObject $AutoValHallA -Name cbKarmotrine -Value $cbKarmotrine -MemberType NoteProperty
Add-Member -InputObject $AutoValHallA -Name lblFlanergide -Value $lblFlanergide -MemberType NoteProperty
Add-Member -InputObject $AutoValHallA -Name lblPowderedDelta -Value $lblPowderedDelta -MemberType NoteProperty
Add-Member -InputObject $AutoValHallA -Name lblBronsonExt -Value $lblBronsonExt -MemberType NoteProperty
Add-Member -InputObject $AutoValHallA -Name lblAdelhyde -Value $lblAdelhyde -MemberType NoteProperty
Add-Member -InputObject $AutoValHallA -Name cbAged -Value $cbAged -MemberType NoteProperty
Add-Member -InputObject $AutoValHallA -Name cbIced -Value $cbIced -MemberType NoteProperty
Add-Member -InputObject $AutoValHallA -Name txtFlanergide -Value $txtFlanergide -MemberType NoteProperty
Add-Member -InputObject $AutoValHallA -Name txtPowderedD -Value $txtPowderedD -MemberType NoteProperty
Add-Member -InputObject $AutoValHallA -Name txtBronsonExt -Value $txtBronsonExt -MemberType NoteProperty
Add-Member -InputObject $AutoValHallA -Name linkTag3 -Value $linkTag3 -MemberType NoteProperty
Add-Member -InputObject $AutoValHallA -Name linkTag2 -Value $linkTag2 -MemberType NoteProperty
Add-Member -InputObject $AutoValHallA -Name linkTag1 -Value $linkTag1 -MemberType NoteProperty
Add-Member -InputObject $AutoValHallA -Name imageList1 -Value $imageList1 -MemberType NoteProperty
Add-Member -InputObject $AutoValHallA -Name components -Value $components -MemberType NoteProperty
Add-Member -InputObject $AutoValHallA -Name txtKarmotrine -Value $txtKarmotrine -MemberType NoteProperty
Add-Member -InputObject $AutoValHallA -Name flowLayoutPanel1 -Value $flowLayoutPanel1 -MemberType NoteProperty
Add-Member -InputObject $AutoValHallA -Name groupBox2 -Value $groupBox2 -MemberType NoteProperty
}
. InitializeComponent
