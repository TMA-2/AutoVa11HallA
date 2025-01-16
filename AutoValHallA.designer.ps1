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
[System.Windows.Forms.Label]$lblAdelhyde = $null
[System.Windows.Forms.CheckBox]$cbAged = $null
[System.Windows.Forms.CheckBox]$cbIced = $null
[System.Windows.Forms.TextBox]$txtFlanergide = $null
[System.Windows.Forms.LinkLabel]$linkTag3 = $null
[System.Windows.Forms.LinkLabel]$linkTag2 = $null
[System.Windows.Forms.LinkLabel]$linkTag1 = $null
[System.Windows.Forms.ImageList]$imageList1 = $null
[System.ComponentModel.IContainer]$components = $null
[System.Windows.Forms.NumericUpDown]$txtKarmotrine = $null
[System.Windows.Forms.FlowLayoutPanel]$flowLayoutPanel1 = $null
[System.Windows.Forms.TextBox]$txtPowderedDelta = $null
[System.Windows.Forms.TextBox]$txtBronsonExtract = $null
[System.Windows.Forms.Label]$lblBronsonExtract = $null
[System.Windows.Forms.LinkLabel]$linkClear = $null
[System.Windows.Forms.BindingSource]$bindingSource1 = $null
[System.Windows.Forms.CheckBox]$cbBig = $null
[System.Windows.Forms.CheckBox]$cbBlended = $null
[System.Windows.Forms.Label]$label1 = $null
[System.Windows.Forms.NumericUpDown]$txtPrice = $null
[System.Windows.Forms.GroupBox]$groupBox2 = $null
function InitializeComponent
{
$components = (New-Object -TypeName System.ComponentModel.Container)
$resources = . (Join-Path $PSScriptRoot 'AutoValHallA.resources.ps1')
$groupBox1 = (New-Object -TypeName System.Windows.Forms.GroupBox)
$textMain = (New-Object -TypeName System.Windows.Forms.TextBox)
$listDrinks = (New-Object -TypeName System.Windows.Forms.ListBox)
$btnSend = (New-Object -TypeName System.Windows.Forms.Button)
$bindingSource1 = (New-Object -TypeName System.Windows.Forms.BindingSource -ArgumentList @($components))
$groupBox2 = (New-Object -TypeName System.Windows.Forms.GroupBox)
$label1 = (New-Object -TypeName System.Windows.Forms.Label)
$flowLayoutPanel1 = (New-Object -TypeName System.Windows.Forms.FlowLayoutPanel)
$linkTag1 = (New-Object -TypeName System.Windows.Forms.LinkLabel)
$linkTag2 = (New-Object -TypeName System.Windows.Forms.LinkLabel)
$linkTag3 = (New-Object -TypeName System.Windows.Forms.LinkLabel)
$linkClear = (New-Object -TypeName System.Windows.Forms.LinkLabel)
$txtPrice = (New-Object -TypeName System.Windows.Forms.NumericUpDown)
$txtKarmotrine = (New-Object -TypeName System.Windows.Forms.NumericUpDown)
$cbBlended = (New-Object -TypeName System.Windows.Forms.CheckBox)
$cbBig = (New-Object -TypeName System.Windows.Forms.CheckBox)
$cbAged = (New-Object -TypeName System.Windows.Forms.CheckBox)
$cbIced = (New-Object -TypeName System.Windows.Forms.CheckBox)
$txtFlanergide = (New-Object -TypeName System.Windows.Forms.TextBox)
$txtPowderedDelta = (New-Object -TypeName System.Windows.Forms.TextBox)
$txtBronsonExtract = (New-Object -TypeName System.Windows.Forms.TextBox)
$txtAdelhyde = (New-Object -TypeName System.Windows.Forms.TextBox)
$cbKarmotrine = (New-Object -TypeName System.Windows.Forms.CheckBox)
$lblFlanergide = (New-Object -TypeName System.Windows.Forms.Label)
$lblPowderedDelta = (New-Object -TypeName System.Windows.Forms.Label)
$lblBronsonExtract = (New-Object -TypeName System.Windows.Forms.Label)
$lblAdelhyde = (New-Object -TypeName System.Windows.Forms.Label)
$imageList1 = (New-Object -TypeName System.Windows.Forms.ImageList -ArgumentList @($components))
$groupBox1.SuspendLayout()
([System.ComponentModel.ISupportInitialize]$bindingSource1).BeginInit()
$groupBox2.SuspendLayout()
$flowLayoutPanel1.SuspendLayout()
([System.ComponentModel.ISupportInitialize]$txtPrice).BeginInit()
([System.ComponentModel.ISupportInitialize]$txtKarmotrine).BeginInit()
$AutoValHallA.SuspendLayout()
#
#groupBox1
#
$groupBox1.Anchor = ([System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$groupBox1.Controls.Add($textMain)
$groupBox1.Controls.Add($listDrinks)
$groupBox1.Controls.Add($btnSend)
$groupBox1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI Light',[System.Single]10,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte]0)))
$groupBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]12))
$groupBox1.Name = [System.String]'groupBox1'
$groupBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]253,[System.Int32]286))
$groupBox1.TabIndex = [System.Int32]1
$groupBox1.TabStop = $false
$groupBox1.Text = [System.String]'Drink List'
#
#textMain
#
$textMain.Anchor = ([System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$textMain.AutoCompleteMode = [System.Windows.Forms.AutoCompleteMode]::Append
$textMain.AutoCompleteSource = [System.Windows.Forms.AutoCompleteSource]::CustomSource
$textMain.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$textMain.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte]0)))
$textMain.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]6,[System.Int32]19))
$textMain.MaxLength = [System.Int32]255
$textMain.Name = [System.String]'textMain'
$textMain.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]179,[System.Int32]23))
$textMain.TabIndex = [System.Int32]0
$textMain.Text = [System.String]'Double-click to clear'
$textMain.add_TextChanged($textMain_TextChanged)
$textMain.add_DoubleClick($textMain_DoubleClick)
#
#listDrinks
#
$listDrinks.Anchor = ([System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$listDrinks.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$listDrinks.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]10,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte]0)))
$listDrinks.FormattingEnabled = $true
$listDrinks.ItemHeight = [System.Int32]17
$listDrinks.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]6,[System.Int32]46))
$listDrinks.Name = [System.String]'listDrinks'
$listDrinks.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]241,[System.Int32]223))
$listDrinks.Sorted = $true
$listDrinks.TabIndex = [System.Int32]2
$listDrinks.add_SelectedValueChanged($listDrinks_SelectedValueChanged)
#
#btnSend
#
$btnSend.Anchor = ([System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$btnSend.AutoEllipsis = $true
$btnSend.Cursor = [System.Windows.Forms.Cursors]::Hand
$btnSend.FlatAppearance.MouseDownBackColor = [System.Drawing.Color]::FromArgb(([System.Int32]192),([System.Int32]255),([System.Int32]192))

$btnSend.FlatAppearance.MouseOverBackColor = [System.Drawing.Color]::FromArgb(([System.Int32]255),([System.Int32]255),([System.Int32]192))

$btnSend.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$btnSend.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte]0)))
$btnSend.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]191,[System.Int32]19))
$btnSend.Name = [System.String]'btnSend'
$btnSend.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]56,[System.Int32]23))
$btnSend.TabIndex = [System.Int32]1
$btnSend.Text = [System.String]'Link'
$btnSend.UseVisualStyleBackColor = $true
$btnSend.add_Click($btnSend_Click)
#
#groupBox2
#
$groupBox2.Anchor = ([System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$groupBox2.Controls.Add($label1)
$groupBox2.Controls.Add($flowLayoutPanel1)
$groupBox2.Controls.Add($txtPrice)
$groupBox2.Controls.Add($txtKarmotrine)
$groupBox2.Controls.Add($cbBlended)
$groupBox2.Controls.Add($cbBig)
$groupBox2.Controls.Add($cbAged)
$groupBox2.Controls.Add($cbIced)
$groupBox2.Controls.Add($txtFlanergide)
$groupBox2.Controls.Add($txtPowderedDelta)
$groupBox2.Controls.Add($txtBronsonExtract)
$groupBox2.Controls.Add($txtAdelhyde)
$groupBox2.Controls.Add($cbKarmotrine)
$groupBox2.Controls.Add($lblFlanergide)
$groupBox2.Controls.Add($lblPowderedDelta)
$groupBox2.Controls.Add($lblBronsonExtract)
$groupBox2.Controls.Add($lblAdelhyde)
$groupBox2.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI Light',[System.Single]10,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte]0)))
$groupBox2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]304))
$groupBox2.Name = [System.String]'groupBox2'
$groupBox2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]253,[System.Int32]245))
$groupBox2.TabIndex = [System.Int32]2
$groupBox2.TabStop = $false
$groupBox2.Text = [System.String]'Details'
#
#label1
#
$label1.AutoSize = $true
$label1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI Light',[System.Single]10,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte]0)))
$label1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]195,[System.Int32]139))
$label1.Name = [System.String]'label1'
$label1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]43,[System.Int32]19))
$label1.TabIndex = [System.Int32]9
$label1.Text = [System.String]'Price'
#
#flowLayoutPanel1
#
$flowLayoutPanel1.Controls.Add($linkTag1)
$flowLayoutPanel1.Controls.Add($linkTag2)
$flowLayoutPanel1.Controls.Add($linkTag3)
$flowLayoutPanel1.Controls.Add($linkClear)
$flowLayoutPanel1.Dock = [System.Windows.Forms.DockStyle]::Bottom
$flowLayoutPanel1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte]0)))
$flowLayoutPanel1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]200))
$flowLayoutPanel1.Name = [System.String]'flowLayoutPanel1'
$flowLayoutPanel1.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]2))
$flowLayoutPanel1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]247,[System.Int32]42))
$flowLayoutPanel1.TabIndex = [System.Int32]0
#
#linkTag1
#
$linkTag1.Anchor = ([System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$linkTag1.AutoSize = $true
$linkTag1.BackColor = [System.Drawing.Color]::Transparent
$linkTag1.Cursor = [System.Windows.Forms.Cursors]::Hand
$linkTag1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]10,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte]0)))
$linkTag1.LinkBehavior = [System.Windows.Forms.LinkBehavior]::HoverUnderline
$linkTag1.LinkColor = [System.Drawing.Color]::Blue
$linkTag1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]5,[System.Int32]2))
$linkTag1.Name = [System.String]'linkTag1'
$linkTag1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]45,[System.Int32]19))
$linkTag1.TabIndex = [System.Int32]6
$linkTag1.TabStop = $true
$linkTag1.Text = [System.String]'Tag 1'
$linkTag1.VisitedLinkColor = [System.Drawing.Color]::IndianRed
$linkTag1.add_LinkClicked($linkTag1_LinkClicked)
#
#linkTag2
#
$linkTag2.Anchor = ([System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$linkTag2.AutoSize = $true
$linkTag2.Cursor = [System.Windows.Forms.Cursors]::Hand
$linkTag2.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]10,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte]0)))
$linkTag2.LinkBehavior = [System.Windows.Forms.LinkBehavior]::HoverUnderline
$linkTag2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]56,[System.Int32]2))
$linkTag2.Name = [System.String]'linkTag2'
$linkTag2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]45,[System.Int32]19))
$linkTag2.TabIndex = [System.Int32]7
$linkTag2.TabStop = $true
$linkTag2.Text = [System.String]'Tag 2'
$linkTag2.VisitedLinkColor = [System.Drawing.Color]::IndianRed
$linkTag2.add_LinkClicked($linkTag2_LinkClicked)
#
#linkTag3
#
$linkTag3.AutoSize = $true
$linkTag3.Cursor = [System.Windows.Forms.Cursors]::Hand
$linkTag3.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]10,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte]0)))
$linkTag3.LinkBehavior = [System.Windows.Forms.LinkBehavior]::HoverUnderline
$linkTag3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]107,[System.Int32]2))
$linkTag3.Name = [System.String]'linkTag3'
$linkTag3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]45,[System.Int32]19))
$linkTag3.TabIndex = [System.Int32]8
$linkTag3.TabStop = $true
$linkTag3.Text = [System.String]'Tag 3'
$linkTag3.VisitedLinkColor = [System.Drawing.Color]::IndianRed
$linkTag3.add_LinkClicked($linkTag3_LinkClicked)
#
#linkClear
#
$linkClear.AutoSize = $true
$linkClear.Cursor = [System.Windows.Forms.Cursors]::Hand
$linkClear.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]10,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte]0)))
$linkClear.LinkBehavior = [System.Windows.Forms.LinkBehavior]::HoverUnderline
$linkClear.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]158,[System.Int32]2))
$linkClear.Name = [System.String]'linkClear'
$linkClear.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]44,[System.Int32]19))
$linkClear.TabIndex = [System.Int32]9
$linkClear.TabStop = $true
$linkClear.Text = [System.String]'Clear'
$linkClear.VisitedLinkColor = [System.Drawing.Color]::IndianRed
$linkClear.add_LinkClicked($linkClear_LinkClicked)
#
#txtPrice
#
$txtPrice.Anchor = ([System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$txtPrice.BackColor = [System.Drawing.SystemColors]::Window
$txtPrice.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$txtPrice.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Consolas',[System.Single]10,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte]0)))
$txtPrice.Increment = [System.Int32]10
$txtPrice.InterceptArrowKeys = $false
$txtPrice.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]199,[System.Int32]163))
$txtPrice.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]2,[System.Int32]1,[System.Int32]2,[System.Int32]1))
$txtPrice.Maximum = [System.Int32]400
$txtPrice.Name = [System.String]'txtPrice'
$txtPrice.ReadOnly = $true
$txtPrice.RightToLeft = [System.Windows.Forms.RightToLeft]::Yes
$txtPrice.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]46,[System.Int32]23))
$txtPrice.TabIndex = [System.Int32]5
#
#txtKarmotrine
#
$txtKarmotrine.Anchor = ([System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$txtKarmotrine.BackColor = [System.Drawing.Color]::LightCyan
$txtKarmotrine.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$txtKarmotrine.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Consolas',[System.Single]10,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte]0)))
$txtKarmotrine.InterceptArrowKeys = $false
$txtKarmotrine.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]199,[System.Int32]115))
$txtKarmotrine.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]2,[System.Int32]1,[System.Int32]2,[System.Int32]1))
$txtKarmotrine.Maximum = [System.Int32]10
$txtKarmotrine.Name = [System.String]'txtKarmotrine'
$txtKarmotrine.RightToLeft = [System.Windows.Forms.RightToLeft]::Yes
$txtKarmotrine.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]46,[System.Int32]23))
$txtKarmotrine.TabIndex = [System.Int32]3
$txtKarmotrine.add_ValueChanged($txtKarmotrine_ValueChanged)
#
#cbBlended
#
$cbBlended.AutoCheck = $false
$cbBlended.AutoSize = $true
$cbBlended.FlatAppearance.CheckedBackColor = [System.Drawing.Color]::FromArgb(([System.Int32]255),([System.Int32]192),([System.Int32]192))

$cbBlended.FlatAppearance.MouseOverBackColor = [System.Drawing.Color]::FromArgb(([System.Int32]192),([System.Int32]255),([System.Int32]255))

$cbBlended.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$cbBlended.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]10,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte]0)))
$cbBlended.ForeColor = [System.Drawing.Color]::DarkRed
$cbBlended.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]105,[System.Int32]136))
$cbBlended.Name = [System.String]'cbBlended'
$cbBlended.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]80,[System.Int32]23))
$cbBlended.TabIndex = [System.Int32]3
$cbBlended.TabStop = $false
$cbBlended.Text = [System.String]'Blended'
$cbBlended.UseVisualStyleBackColor = $true
#
#cbBig
#
$cbBig.AutoSize = $true
$cbBig.FlatAppearance.CheckedBackColor = [System.Drawing.Color]::FromArgb(([System.Int32]255),([System.Int32]192),([System.Int32]192))

$cbBig.FlatAppearance.MouseOverBackColor = [System.Drawing.Color]::FromArgb(([System.Int32]192),([System.Int32]255),([System.Int32]255))

$cbBig.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$cbBig.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]10,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte]0)))
$cbBig.ForeColor = [System.Drawing.Color]::Black
$cbBig.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]105,[System.Int32]160))
$cbBig.Name = [System.String]'cbBig'
$cbBig.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]52,[System.Int32]23))
$cbBig.TabIndex = [System.Int32]4
$cbBig.Text = [System.String]'Big!'
$cbBig.UseVisualStyleBackColor = $true
$cbBig.add_CheckedChanged($cbBig_CheckedChanged)
#
#cbAged
#
$cbAged.AutoCheck = $false
$cbAged.AutoSize = $true
$cbAged.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$cbAged.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]10,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte]0)))
$cbAged.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]184),([System.Int32]81),([System.Int32]165))

$cbAged.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]8,[System.Int32]160))
$cbAged.Name = [System.String]'cbAged'
$cbAged.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]61,[System.Int32]23))
$cbAged.TabIndex = [System.Int32]3
$cbAged.TabStop = $false
$cbAged.Text = [System.String]'Aged'
$cbAged.UseVisualStyleBackColor = $true
#
#cbIced
#
$cbIced.AutoCheck = $false
$cbIced.AutoSize = $true
$cbIced.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$cbIced.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]10,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte]0)))
$cbIced.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]33),([System.Int32]135),([System.Int32]170))

$cbIced.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]8,[System.Int32]136))
$cbIced.Name = [System.String]'cbIced'
$cbIced.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]53,[System.Int32]23))
$cbIced.TabIndex = [System.Int32]2
$cbIced.TabStop = $false
$cbIced.Text = [System.String]'Iced'
$cbIced.UseVisualStyleBackColor = $true
#
#txtFlanergide
#
$txtFlanergide.Anchor = ([System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$txtFlanergide.BackColor = [System.Drawing.Color]::Honeydew
$txtFlanergide.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$txtFlanergide.Cursor = [System.Windows.Forms.Cursors]::Arrow
$txtFlanergide.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Consolas',[System.Single]10,[System.Drawing.FontStyle]::Bold))
$txtFlanergide.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]215,[System.Int32]90))
$txtFlanergide.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]2,[System.Int32]1,[System.Int32]2,[System.Int32]1))
$txtFlanergide.Name = [System.String]'txtFlanergide'
$txtFlanergide.ReadOnly = $true
$txtFlanergide.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]30,[System.Int32]23))
$txtFlanergide.TabIndex = [System.Int32]7
$txtFlanergide.TabStop = $false
$txtFlanergide.Text = [System.String]'0'
$txtFlanergide.TextAlign = [System.Windows.Forms.HorizontalAlignment]::Right
#
#txtPowderedDelta
#
$txtPowderedDelta.Anchor = ([System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$txtPowderedDelta.BackColor = [System.Drawing.Color]::LightSteelBlue
$txtPowderedDelta.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$txtPowderedDelta.Cursor = [System.Windows.Forms.Cursors]::Default
$txtPowderedDelta.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Consolas',[System.Single]10,[System.Drawing.FontStyle]::Bold))
$txtPowderedDelta.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]215,[System.Int32]66))
$txtPowderedDelta.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]2,[System.Int32]1,[System.Int32]2,[System.Int32]1))
$txtPowderedDelta.Name = [System.String]'txtPowderedDelta'
$txtPowderedDelta.ReadOnly = $true
$txtPowderedDelta.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]30,[System.Int32]23))
$txtPowderedDelta.TabIndex = [System.Int32]6
$txtPowderedDelta.TabStop = $false
$txtPowderedDelta.Text = [System.String]'0'
$txtPowderedDelta.TextAlign = [System.Windows.Forms.HorizontalAlignment]::Right
#
#txtBronsonExtract
#
$txtBronsonExtract.Anchor = ([System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$txtBronsonExtract.BackColor = [System.Drawing.Color]::PeachPuff
$txtBronsonExtract.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$txtBronsonExtract.Cursor = [System.Windows.Forms.Cursors]::Default
$txtBronsonExtract.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Consolas',[System.Single]10,[System.Drawing.FontStyle]::Bold))
$txtBronsonExtract.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]215,[System.Int32]42))
$txtBronsonExtract.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]2,[System.Int32]1,[System.Int32]2,[System.Int32]1))
$txtBronsonExtract.Name = [System.String]'txtBronsonExtract'
$txtBronsonExtract.ReadOnly = $true
$txtBronsonExtract.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]30,[System.Int32]23))
$txtBronsonExtract.TabIndex = [System.Int32]5
$txtBronsonExtract.TabStop = $false
$txtBronsonExtract.Text = [System.String]'0'
$txtBronsonExtract.TextAlign = [System.Windows.Forms.HorizontalAlignment]::Right
#
#txtAdelhyde
#
$txtAdelhyde.Anchor = ([System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$txtAdelhyde.BackColor = [System.Drawing.Color]::MistyRose
$txtAdelhyde.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$txtAdelhyde.Cursor = [System.Windows.Forms.Cursors]::Default
$txtAdelhyde.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Consolas',[System.Single]10,[System.Drawing.FontStyle]::Bold))
$txtAdelhyde.ForeColor = [System.Drawing.SystemColors]::WindowText
$txtAdelhyde.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]215,[System.Int32]18))
$txtAdelhyde.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]2,[System.Int32]2,[System.Int32]2,[System.Int32]1))
$txtAdelhyde.MaxLength = [System.Int32]3
$txtAdelhyde.Name = [System.String]'txtAdelhyde'
$txtAdelhyde.ReadOnly = $true
$txtAdelhyde.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]30,[System.Int32]23))
$txtAdelhyde.TabIndex = [System.Int32]4
$txtAdelhyde.TabStop = $false
$txtAdelhyde.Text = [System.String]'0'
$txtAdelhyde.TextAlign = [System.Windows.Forms.HorizontalAlignment]::Right
#
#cbKarmotrine
#
$cbKarmotrine.AutoSize = $true
$cbKarmotrine.FlatAppearance.BorderColor = [System.Drawing.Color]::FromArgb(([System.Int32]197),([System.Int32]228),([System.Int32]228))

$cbKarmotrine.FlatAppearance.BorderSize = [System.Int32]2
$cbKarmotrine.FlatAppearance.CheckedBackColor = [System.Drawing.Color]::Green
$cbKarmotrine.FlatAppearance.MouseOverBackColor = [System.Drawing.Color]::Cyan
$cbKarmotrine.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$cbKarmotrine.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]10,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte]0)))
$cbKarmotrine.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]0),([System.Int32]192),([System.Int32]224))

$cbKarmotrine.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]8,[System.Int32]112))
$cbKarmotrine.Name = [System.String]'cbKarmotrine'
$cbKarmotrine.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]101,[System.Int32]23))
$cbKarmotrine.TabIndex = [System.Int32]1
$cbKarmotrine.Text = [System.String]'Karmotrine'
$cbKarmotrine.UseVisualStyleBackColor = $false
$cbKarmotrine.add_CheckedChanged($cbKarmotrine_CheckedChanged)
#
#lblFlanergide
#
$lblFlanergide.AutoSize = $true
$lblFlanergide.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]10,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte]0)))
$lblFlanergide.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]86),([System.Int32]139),([System.Int32]40))

$lblFlanergide.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]90))
$lblFlanergide.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3))
$lblFlanergide.Name = [System.String]'lblFlanergide'
$lblFlanergide.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]80,[System.Int32]19))
$lblFlanergide.TabIndex = [System.Int32]0
$lblFlanergide.Text = [System.String]'Flanergide'
#
#lblPowderedDelta
#
$lblPowderedDelta.AutoSize = $true
$lblPowderedDelta.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]10,[System.Drawing.FontStyle]::Bold))
$lblPowderedDelta.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]135),([System.Int32]166),([System.Int32]227))

$lblPowderedDelta.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]66))
$lblPowderedDelta.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3))
$lblPowderedDelta.Name = [System.String]'lblPowderedDelta'
$lblPowderedDelta.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]117,[System.Int32]19))
$lblPowderedDelta.TabIndex = [System.Int32]0
$lblPowderedDelta.Text = [System.String]'Powdered Delta'
#
#lblBronsonExtract
#
$lblBronsonExtract.AutoSize = $true
$lblBronsonExtract.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$lblBronsonExtract.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]10,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte]0)))
$lblBronsonExtract.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]192),([System.Int32]160),([System.Int32]0))

$lblBronsonExtract.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]42))
$lblBronsonExtract.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3))
$lblBronsonExtract.Name = [System.String]'lblBronsonExtract'
$lblBronsonExtract.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]114,[System.Int32]19))
$lblBronsonExtract.TabIndex = [System.Int32]0
$lblBronsonExtract.Text = [System.String]'Bronson Extract'
#
#lblAdelhyde
#
$lblAdelhyde.AutoSize = $true
$lblAdelhyde.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$lblAdelhyde.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]10,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte]0)))
$lblAdelhyde.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]226),([System.Int32]39),([System.Int32]67))

$lblAdelhyde.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]18))
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
$AutoValHallA.AcceptButton = $btnSend
$AutoValHallA.BackColor = [System.Drawing.SystemColors]::Control
$AutoValHallA.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]277,[System.Int32]561))
$AutoValHallA.Controls.Add($groupBox2)
$AutoValHallA.Controls.Add($groupBox1)
$AutoValHallA.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]8.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte]0)))
$AutoValHallA.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$AutoValHallA.MaximizeBox = $false
$AutoValHallA.MaximumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]500,[System.Int32]1200))
$AutoValHallA.MinimumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]290,[System.Int32]400))
$AutoValHallA.Name = [System.String]'AutoValHallA'
$AutoValHallA.Text = [System.String]'AutoVa11HallA'
$AutoValHallA.add_Activated($AutoValHallA_Activated)
$AutoValHallA.add_FormClosing($AutoValHallA_FormClosing)
$AutoValHallA.add_Load($AutoValHallA_Load)
$groupBox1.ResumeLayout($false)
$groupBox1.PerformLayout()
([System.ComponentModel.ISupportInitialize]$bindingSource1).EndInit()
$groupBox2.ResumeLayout($false)
$groupBox2.PerformLayout()
$flowLayoutPanel1.ResumeLayout($false)
$flowLayoutPanel1.PerformLayout()
([System.ComponentModel.ISupportInitialize]$txtPrice).EndInit()
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
Add-Member -InputObject $AutoValHallA -Name lblAdelhyde -Value $lblAdelhyde -MemberType NoteProperty
Add-Member -InputObject $AutoValHallA -Name cbAged -Value $cbAged -MemberType NoteProperty
Add-Member -InputObject $AutoValHallA -Name cbIced -Value $cbIced -MemberType NoteProperty
Add-Member -InputObject $AutoValHallA -Name txtFlanergide -Value $txtFlanergide -MemberType NoteProperty
Add-Member -InputObject $AutoValHallA -Name linkTag3 -Value $linkTag3 -MemberType NoteProperty
Add-Member -InputObject $AutoValHallA -Name linkTag2 -Value $linkTag2 -MemberType NoteProperty
Add-Member -InputObject $AutoValHallA -Name linkTag1 -Value $linkTag1 -MemberType NoteProperty
Add-Member -InputObject $AutoValHallA -Name imageList1 -Value $imageList1 -MemberType NoteProperty
Add-Member -InputObject $AutoValHallA -Name components -Value $components -MemberType NoteProperty
Add-Member -InputObject $AutoValHallA -Name txtKarmotrine -Value $txtKarmotrine -MemberType NoteProperty
Add-Member -InputObject $AutoValHallA -Name flowLayoutPanel1 -Value $flowLayoutPanel1 -MemberType NoteProperty
Add-Member -InputObject $AutoValHallA -Name txtPowderedDelta -Value $txtPowderedDelta -MemberType NoteProperty
Add-Member -InputObject $AutoValHallA -Name txtBronsonExtract -Value $txtBronsonExtract -MemberType NoteProperty
Add-Member -InputObject $AutoValHallA -Name lblBronsonExtract -Value $lblBronsonExtract -MemberType NoteProperty
Add-Member -InputObject $AutoValHallA -Name linkClear -Value $linkClear -MemberType NoteProperty
Add-Member -InputObject $AutoValHallA -Name bindingSource1 -Value $bindingSource1 -MemberType NoteProperty
Add-Member -InputObject $AutoValHallA -Name cbBig -Value $cbBig -MemberType NoteProperty
Add-Member -InputObject $AutoValHallA -Name cbBlended -Value $cbBlended -MemberType NoteProperty
Add-Member -InputObject $AutoValHallA -Name label1 -Value $label1 -MemberType NoteProperty
Add-Member -InputObject $AutoValHallA -Name txtPrice -Value $txtPrice -MemberType NoteProperty
Add-Member -InputObject $AutoValHallA -Name groupBox2 -Value $groupBox2 -MemberType NoteProperty
}
. InitializeComponent
