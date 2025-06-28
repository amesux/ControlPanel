#Requires AutoHotkey v2.0
#Include ControlPanelEventHandlers.ahk

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

;ADD UTILITY BUTTONS ABOVE

;---- Section A -----

;ADD SECTION A ABOVE

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
