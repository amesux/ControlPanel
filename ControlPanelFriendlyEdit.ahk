#Requires AutoHotkey v2.0
#Include ControlPanelEventHandlers.ahk
#Include ControlPanelActButtons.ahk

controlGui := Gui()
controlGui.Title := "Control Panel"
controlGui.MarginX := 38
controlGui.MarginY := 49
controlGui.SetFont("s12", "Consolas")
controlGui.BackColor := 0xbcc5d4
controlGui.Show("w1024 h700")

btnGap := 20
btnMenu := "w100 h30"
btnStandard := "w100 h100"
btnMini := "w100 h30 x882 y7"

/*
Act button row 1 starts at x162 y109
Utility button starts at x42 y109
menu button starts at x42 y53
*/

;----- Button Group Arrays -----

groupA := []
groupB := []
groupC := []
groupD := []
groupE := []
groupF := []
groupG := []
groupH := []
groupEV := []
allGroups := [groupA, groupB, groupC, groupD, groupE, groupF, groupG, groupH]

;--- Title ----

controlGui.Add("Text", "Center y17 cBlack", "Control Panel")
controlGui.SetFont("s8", "Consolas")
editbuttons := controlGui.Add("Button", btnMini, "EDIT")
editbuttons.OnEvent("Click", (*) => Run("Editor.ahk"))

;---- Menu Buttons ----

controlGui.SetFont("s12", "Consolas")
btnShowA := controlGui.Add("Button", btnMenu . " x42 y53", "Section A")

;ADD SECTION BUTTONS ABOVE

;---- Utility buttons -----

utilBtn1 := controlGui.Add("Button",btnStandard . " x42 y109", UtilityButton1)
utilBtn1.OnEvent("Click", (*) => MsgBox("You clicked utility row 1"))

utilBtn2 := controlGui.Add("Button",btnStandard . "y+20", UtilityButton2)
utilBtn2.OnEvent("Click", (*) => MsgBox("You clicked utility row 2"))

utilBtn3 := controlGui.Add("Button",btnStandard . "y+20", UtilityButton3)
utilBtn3.OnEvent("Click", (*) => MsgBox("You clicked utility row 3"))

utilBtn4 := controlGui.Add("Button",btnStandard . "y+20", UtilityButton4)
utilBtn4.OnEvent("Click", (*) => MsgBox("You clicked utility row 4"))

utilBtn5 := controlGui.Add("Button",btnStandard . "y+20", UtilityButton5)
utilBtn5.OnEvent("Click", (*) => MsgBox("You clicked utility row 5"))

;---- Section A -----

;Row
btnA11 := controlGui.AddButton(btnStandard . " x42 53", ar1c1)
btnA11.OnEvent("Click", (*) => ar1c1act)
groupA.Push(btnA11)

btnA12 := controlGui.AddButton(btnStandard . " x+20", ar1c2)
btnA12.OnEvent("Click",(*) => ar1c2act)
groupA.Push(btnA12)

btnA13 := controlGui.AddButton(btnStandard . " x+20", ar1c3)
btnA13.OnEvent("Click", (*) => ar1c3act)
groupA.Push(btnA13)

btnA14 := controlGui.AddButton(btnStandard . " x+20", ar1c4)
btnA14.OnEvent("Click", (*) => ar1c4act)
groupA.Push(btnA14)

btnA15 := controlGui.AddButton(btnStandard . " x+20", ar1c5)
btnA15.OnEvent("Click", (*) => ar1c15act)
groupA.Push(btnA15)

btnA16 := controlGui.AddButton(btnStandard . " x+20", ar1c6)
btnA16.OnEvent("Click", (*) => ar1c16act)
groupA.Push(btnA16)

btnA17 := controlGui.AddButton(btnStandard . " x+20", ar1c7)
btnA17.OnEvent("Click", (*) => ar1c7act)
groupA.Push(btnA17)

;Row2
btnA21 := controlGui.AddButton(btnStandard . " x42 y+20", ar2c1)
btnA21.OnEvent("Click", (*) => ar2c1act)
groupA.Push(btnA21)

btnA22 := controlGui.AddButton(btnStandard . " x+20", ar2c2)
btnA22.OnEvent("Click", (*) => ar2c2act)
groupA.Push(btn22)

btnA23 := controlGui.AddButton(btnStandard . " x+20", arc2c3)
btnA23.OnEvent("Click", (*) => ar2c3act)


;---- Section B -----

;ADD SECTION B ABOVE

;---- Section C -----

;ADD SECTION C ABOVE

;----- Section D -----

;ADD SECTION D ABOVE

;----- Section E ----

;ADD SECTION E ABOVE

;----- Section F ----

;ADD SECTION F ABOVE

;----- Section G ----

;ADD SECTION G ABOVE

;----- Section H -----

;ADD SECTION H ABOVE
