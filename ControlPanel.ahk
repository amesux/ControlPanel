#Requires AutoHotkey v2.0

/*

This is a AHKv2 script for an onscreen macropad with dynamic sections.
Combine it with SpaceDesk and TouchMouseTool to make a fun stream-deck type control panel for any of your needs

*/

myGui := Gui()
myGui.Title := "Control Panel"
myGui.MarginX := 38
myGui.MarginY := 49
myGui.SetFont("s12", "Consolas")
myGui.BackColor := 0xbcc5d4
myGui.Show("w1024 h700")

btnGap := 20 ; gap between buttons
btnMenu := "w100 h30"
btnAct := "w100 h100"	
btnUtil := "w100 h100"
btnMenuFirst := btnMenu . " x42  y53"
btnActFirst := btnAct  . " x162  y109"
btnUtilFirst := btnUtil . " x42  y109"
btnMenuWithOffset := btnMenu . " x+20"
btnActXOffset := btnAct . " x+20"
btnActNextRow := btnAct . " x162 y+20"
btnUtilWithOffset := btnUtil . " y+20"
btnExtra := "w100 h30 x882 y7"

;---- Button Group Arrays----
groupA := []
groupB := []
groupC := []
groupD := []
groupE := []
groupF := []
groupG := []
groupH := []
groupEV := []
allGroups := [groupA, groupB, groupC, groupD, groupE, groupF, groupG, groupH, groupEV]

;---- Title

myGui.Add("Text", "Center y17 cBlack", "Control Panel")
myGui.SetFont("s8", "Consolas" )
btnShowEV := myGui.Add("Button", btnExtra, "EVENT HANDLERS")

;---- Menu Buttons
myGui.SetFont("s12", "Consolas")
btnShowA := myGui.Add("Button", btnMenuFirst, "Section A")
btnShowB := myGui.Add("Button", btnMenuWithOffset, "Section B")
btnShowC := myGui.Add("Button", btnMenuWithOffset, "Section C")
btnShowD := myGui.Add("Button", btnMenuWithOffset, "Section D")
btnShowE := myGui.Add("Button", btnMenuWithOffset, "Section E")
btnShowF := myGui.Add("Button", btnMenuWithOffset, "Section F")
btnShowG := myGui.Add("Button", btnMenuWithOffset, "Section G")
btnShowH := myGui.Add("Button", btnMenuWithOffset, "Section H")


;--- Utility Buttons ----
;these stay visible regardless of active section
utilBtn1 := myGui.Add("Button",btnUtilFirst , "UTILITY BUTTON 1")
utilBtn1.OnEvent("Click", (*) => MsgBox("You clicked utility row 1"))

utilBtn2 := myGui.Add("Button",btnUtilWithOffset , "UTILITY BUTTON 2")
utilBtn2.OnEvent("Click", (*) => MsgBox("You clicked utility row 2"))

utilBtn3 := myGui.Add("Button",btnUtilWithOffset , "UTILITY BUTTON 3")
utilBtn3.OnEvent("Click", (*) => MsgBox("You clicked utility row 3"))

utilBtn4 := myGui.Add("Button",btnUtilWithOffset , "UTILITY BUTTON 4")
utilBtn4.OnEvent("Click", (*) => MsgBox("You clicked utility row 4"))

utilBtn5 := myGui.Add("Button",btnUtilWithOffset , "UTILITY BUTTON 5")
utilBtn5.OnEvent("Click", (*) => MsgBox("You clicked utility row 5"))

;---- Section A -----
; Replace your buttons here
; Buttons are formatted as btn[section][row][column]

btnA11 := myGui.Add("Button", btnActFirst , "ACT BUTTON")
btnA11.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupA.Push(btnA11)

btnA12 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnA12.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupA.Push(btnA12)

btnA13 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnA13.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupA.Push(btnA13)

btnA14 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnA14.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupA.Push(btnA14)

btnA15 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnA15.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupA.Push(btnA15)

btnA16 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnA16.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupA.Push(btnA16)

btnA17 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnA17.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupA.Push(btnA17)

btnA21 := myGui.Add("Button", btnActNextRow , "ACT BUTTON")
btnA21.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupA.Push(btnA21)

btnA22 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnA22.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupA.Push(btnA22)

btnA23 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnA23.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupA.Push(btnA23)

btnA24 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnA24.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupA.Push(btnA24)

btnA25 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnA25.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupA.Push(btnA25)

btnA26 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnA26.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupA.Push(btnA26)

btnA27 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnA27.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupA.Push(btnA27)

btnA31 := myGui.Add("Button", btnActNextRow , "ACT BUTTON")
btnA31.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupA.Push(btnA31)

btnA32 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnA32.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupA.Push(btnA32)

btnA33 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnA33.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupA.Push(btnA33)

btnA34 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnA34.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupA.Push(btnA34)

btnA35 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnA35.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupA.Push(btnA35)

btnA36 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnA36.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupA.Push(btnA36)

btnA37 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnA37.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupA.Push(btnA37)

btnA41 := myGui.Add("Button", btnActNextRow , "ACT BUTTON")
btnA41.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupA.Push(btnA41)

btnA42 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnA42.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupA.Push(btnA42)

btnA43 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnA43.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupA.Push(btnA43)

btnA44 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnA44.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupA.Push(btnA44)

btnA45 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnA45.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupA.Push(btnA45)

btnA46 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnA46.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupA.Push(btnA46)

btnA47 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnA47.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupA.Push(btnA47)

btnA51 := myGui.Add("Button", btnActNextRow , "ACT BUTTON")
btnA51.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupA.Push(btnA51)

btnA52 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnA52.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupA.Push(btnA52)

btnA53 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnA53.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupA.Push(btnA53)

btnA54 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnA54.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupA.Push(btnA54)

btnA55 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnA55.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupA.Push(btnA55)

btnA56 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnA56.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupA.Push(btnA56)

btnA57 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnA57.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupA.Push(btnA57)

;---- Section B -----
; Replace your buttons here
; Buttons are formatted as btn[section][row][column]

btnB11 := myGui.Add("Button", btnActFirst , "ACT BUTTON")
btnB11.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupB.Push(btnB11)

btnB12 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnB12.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupB.Push(btnB12)

btnB13 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnB13.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupB.Push(btnB13)

btnB14 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnB14.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupB.Push(btnB14)

btnB15 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnB15.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupB.Push(btnB15)

btnB16 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnB16.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupB.Push(btnB16)

btnB17 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnB17.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupB.Push(btnB17)

btnB21 := myGui.Add("Button", btnActNextRow , "ACT BUTTON")
btnB21.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupB.Push(btnB21)

btnB22 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnB22.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupB.Push(btnB22)

btnB23 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnB23.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupB.Push(btnB23)

btnB24 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnB24.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupB.Push(btnB24)

btnB25 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnB25.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupB.Push(btnB25)

btnB26 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnB26.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupB.Push(btnB26)

btnB27 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnB27.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupB.Push(btnB27)

btnB31 := myGui.Add("Button", btnActNextRow , "ACT BUTTON")
btnB31.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupB.Push(btnB31)

btnB32 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnB32.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupB.Push(btnB32)

btnB33 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnB33.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupB.Push(btnB33)

btnB34 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnB34.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupB.Push(btnB34)

btnB35 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnB35.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupB.Push(btnB35)

btnB36 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnB36.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupB.Push(btnB36)

btnB37 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnB37.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupB.Push(btnB37)

btnB41 := myGui.Add("Button", btnActNextRow , "ACT BUTTON")
btnB41.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupB.Push(btnB41)

btnB42 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnB42.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupB.Push(btnB42)

btnB43 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnB43.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupB.Push(btnB43)

btnB44 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnB44.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupB.Push(btnB44)

btnB45 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnB45.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupB.Push(btnB45)

btnB46 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnB46.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupB.Push(btnB46)

btnB47 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnB47.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupB.Push(btnB47)

btnB51 := myGui.Add("Button", btnActNextRow , "ACT BUTTON")
btnB51.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupB.Push(btnB51)

btnB52 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnB52.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupB.Push(btnB52)

btnB53 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnB53.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupB.Push(btnB53)

btnB54 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnB54.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupB.Push(btnB54)

btnB55 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnB55.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupB.Push(btnB55)

btnB56 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnB56.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupB.Push(btnB56)

btnB57 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnB57.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupB.Push(btnB57)

;---- Section C -----
; Replace your buttons here
; Buttons are formatted as btn[section][row][column]

btnC11 := myGui.Add("Button", btnActFirst , "ACT BUTTON")
btnC11.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupC.Push(btnC11)

btnC12 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnC12.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupC.Push(btnC12)

btnC13 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnC13.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupC.Push(btnC13)

btnC14 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnC14.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupC.Push(btnC14)

btnC15 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnC15.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupC.Push(btnC15)

btnC16 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnC16.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupC.Push(btnC16)

btnC17 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnC17.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupC.Push(btnC17)

btnC21 := myGui.Add("Button", btnActNextRow , "ACT BUTTON")
btnC21.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupC.Push(btnC21)

btnC22 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnC22.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupC.Push(btnC22)

btnC23 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnC23.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupC.Push(btnC23)

btnC24 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnC24.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupC.Push(btnC24)

btnC25 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnC25.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupC.Push(btnC25)

btnC26 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnC26.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupC.Push(btnC26)

btnC27 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnC27.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupC.Push(btnC27)

btnC31 := myGui.Add("Button", btnActNextRow , "ACT BUTTON")
btnC31.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupC.Push(btnC31)

btnC32 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnC32.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupC.Push(btnC32)

btnC33 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnC33.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupC.Push(btnC33)

btnC34 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnC34.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupC.Push(btnC34)

btnC35 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnC35.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupC.Push(btnC35)

btnC36 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnC36.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupC.Push(btnC36)

btnC37 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnC37.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupC.Push(btnC37)

btnC41 := myGui.Add("Button", btnActNextRow , "ACT BUTTON")
btnC41.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupC.Push(btnC41)

btnC42 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnC42.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupC.Push(btnC42)

btnC43 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnC43.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupC.Push(btnC43)

btnC44 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnC44.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupC.Push(btnC44)

btnC45 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnC45.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupC.Push(btnC45)

btnC46 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnC46.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupC.Push(btnC46)

btnC47 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnC47.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupC.Push(btnC47)

btnC51 := myGui.Add("Button", btnActNextRow , "ACT BUTTON")
btnC51.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupC.Push(btnC51)

btnC52 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnC52.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupC.Push(btnC52)

btnC53 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnC53.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupC.Push(btnC53)

btnC54 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnC54.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupC.Push(btnC54)

btnC55 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnC55.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupC.Push(btnC55)

btnC56 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnC56.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupC.Push(btnC56)

btnC57 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnC57.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupC.Push(btnC57)

;---- Section D -----
; Replace your buttons here
; Buttons are formatted as btn[section][row][column]

btnD11 := myGui.Add("Button", btnActFirst , "ACT BUTTON")
btnD11.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupD.Push(btnD11)

btnD12 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnD12.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupD.Push(btnD12)

btnD13 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnD13.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupD.Push(btnD13)

btnD14 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnD14.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupD.Push(btnD14)

btnD15 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnD15.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupD.Push(btnD15)

btnD16 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnD16.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupD.Push(btnD16)

btnD17 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnD17.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupD.Push(btnD17)

btnD21 := myGui.Add("Button", btnActNextRow , "ACT BUTTON")
btnD21.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupD.Push(btnD21)

btnD22 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnD22.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupD.Push(btnD22)

btnD23 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnD23.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupD.Push(btnD23)

btnD24 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnD24.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupD.Push(btnD24)

btnD25 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnD25.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupD.Push(btnD25)

btnD26 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnD26.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupD.Push(btnD26)

btnD27 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnD27.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupD.Push(btnD27)

btnD31 := myGui.Add("Button", btnActNextRow , "ACT BUTTON")
btnD31.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupD.Push(btnD31)

btnD32 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnD32.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupD.Push(btnD32)

btnD33 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnD33.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupD.Push(btnD33)

btnD34 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnD34.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupD.Push(btnD34)

btnD35 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnD35.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupD.Push(btnD35)

btnD36 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnD36.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupD.Push(btnD36)

btnD37 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnD37.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupD.Push(btnD37)

btnD41 := myGui.Add("Button", btnActNextRow , "ACT BUTTON")
btnD41.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupD.Push(btnD41)

btnD42 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnD42.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupD.Push(btnD42)

btnD43 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnD43.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupD.Push(btnD43)

btnD44 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnD44.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupD.Push(btnD44)

btnD45 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnD45.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupD.Push(btnD45)

btnD46 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnD46.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupD.Push(btnD46)

btnD47 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnD47.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupD.Push(btnD47)

btnD51 := myGui.Add("Button", btnActNextRow , "ACT BUTTON")
btnD51.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupD.Push(btnD51)

btnD52 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnD52.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupD.Push(btnD52)

btnD53 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnD53.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupD.Push(btnD53)

btnD54 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnD54.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupD.Push(btnD54)

btnD55 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnD55.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupD.Push(btnD55)

btnD56 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnD56.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupD.Push(btnD56)

btnD57 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnD57.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupD.Push(btnD57)

;---- Section E -----
; Replace your buttons here
; Buttons are formatted as btn[section][row][column]

btnE11 := myGui.Add("Button", btnActFirst , "ACT BUTTON")
btnE11.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupE.Push(btnE11)

btnE12 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnE12.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupE.Push(btnE12)

btnE13 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnE13.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupE.Push(btnE13)

btnE14 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnE14.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupE.Push(btnE14)

btnE15 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnE15.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupE.Push(btnE15)

btnE16 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnE16.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupE.Push(btnE16)

btnE17 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnE17.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupE.Push(btnE17)

btnE21 := myGui.Add("Button", btnActNextRow , "ACT BUTTON")
btnE21.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupE.Push(btnE21)

btnE22 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnE22.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupE.Push(btnE22)

btnE23 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnE23.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupE.Push(btnE23)

btnE24 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnE24.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupE.Push(btnE24)

btnE25 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnE25.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupE.Push(btnE25)

btnE26 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnE26.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupE.Push(btnE26)

btnE27 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnE27.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupE.Push(btnE27)

btnE31 := myGui.Add("Button", btnActNextRow , "ACT BUTTON")
btnE31.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupE.Push(btnE31)

btnE32 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnE32.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupE.Push(btnE32)

btnE33 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnE33.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupE.Push(btnE33)

btnE34 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnE34.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupE.Push(btnE34)

btnE35 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnE35.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupE.Push(btnE35)

btnE36 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnE36.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupE.Push(btnE36)

btnE37 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnE37.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupE.Push(btnE37)

btnE41 := myGui.Add("Button", btnActNextRow , "ACT BUTTON")
btnE41.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupE.Push(btnE41)

btnE42 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnE42.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupE.Push(btnE42)

btnE43 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnE43.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupE.Push(btnE43)

btnE44 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnE44.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupE.Push(btnE44)

btnE45 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnE45.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupE.Push(btnE45)

btnE46 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnE46.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupE.Push(btnE46)

btnE47 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnE47.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupE.Push(btnE47)

btnE51 := myGui.Add("Button", btnActNextRow , "ACT BUTTON")
btnE51.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupE.Push(btnE51)

btnE52 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnE52.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupE.Push(btnE52)

btnE53 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnE53.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupE.Push(btnE53)

btnE54 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnE54.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupE.Push(btnE54)

btnE55 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnE55.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupE.Push(btnE55)

btnE56 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnE56.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupE.Push(btnE56)

btnE57 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnE57.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupE.Push(btnE57)

;---- Section F -----
; Replace your buttons here
; Buttons are formatted as btn[section][row][column]

btnF11 := myGui.Add("Button", btnActFirst , "ACT BUTTON")
btnF11.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupF.Push(btnF11)

btnF12 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnF12.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupF.Push(btnF12)

btnF13 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnF13.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupF.Push(btnF13)

btnF14 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnF14.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupF.Push(btnF14)

btnF15 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnF15.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupF.Push(btnF15)

btnF16 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnF16.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupF.Push(btnF16)

btnF17 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnF17.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupF.Push(btnF17)

btnF21 := myGui.Add("Button", btnActNextRow , "ACT BUTTON")
btnF21.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupF.Push(btnF21)

btnF22 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnF22.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupF.Push(btnF22)

btnF23 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnF23.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupF.Push(btnF23)

btnF24 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnF24.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupF.Push(btnF24)

btnF25 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnF25.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupF.Push(btnF25)

btnF26 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnF26.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupF.Push(btnF26)

btnF27 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnF27.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupF.Push(btnF27)

btnF31 := myGui.Add("Button", btnActNextRow , "ACT BUTTON")
btnF31.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupF.Push(btnF31)

btnF32 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnF32.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupF.Push(btnF32)

btnF33 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnF33.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupF.Push(btnF33)

btnF34 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnF34.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupF.Push(btnF34)

btnF35 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnF35.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupF.Push(btnF35)

btnF36 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnF36.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupF.Push(btnF36)

btnF37 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnF37.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupF.Push(btnF37)

btnF41 := myGui.Add("Button", btnActNextRow , "ACT BUTTON")
btnF41.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupF.Push(btnF41)

btnF42 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnF42.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupF.Push(btnF42)

btnF43 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnF43.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupF.Push(btnF43)

btnF44 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnF44.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupF.Push(btnF44)

btnF45 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnF45.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupF.Push(btnF45)

btnF46 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnF46.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupF.Push(btnF46)

btnF47 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnF47.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupF.Push(btnF47)

btnF51 := myGui.Add("Button", btnActNextRow , "ACT BUTTON")
btnF51.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupF.Push(btnF51)

btnF52 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnF52.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupF.Push(btnF52)

btnF53 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnF53.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupF.Push(btnF53)

btnF54 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnF54.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupF.Push(btnF54)

btnF55 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnF55.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupF.Push(btnF55)

btnF56 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnF56.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupF.Push(btnF56)

btnF57 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnF57.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupF.Push(btnF57)

;---- Section G -----
; Replace your buttons here
; Buttons are formatted as btn[section][row][column]

btnG11 := myGui.Add("Button", btnActFirst , "ACT BUTTON")
btnG11.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupG.Push(btnG11)

btnG12 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnG12.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupG.Push(btnG12)

btnG13 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnG13.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupG.Push(btnG13)

btnG14 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnG14.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupG.Push(btnG14)

btnG15 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnG15.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupG.Push(btnG15)

btnG16 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnG16.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupG.Push(btnG16)

btnG17 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnG17.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupG.Push(btnG17)

btnG21 := myGui.Add("Button", btnActNextRow , "ACT BUTTON")
btnG21.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupG.Push(btnG21)

btnG22 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnG22.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupG.Push(btnG22)

btnG23 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnG23.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupG.Push(btnG23)

btnG24 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnG24.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupG.Push(btnG24)

btnG25 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnG25.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupG.Push(btnG25)

btnG26 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnG26.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupG.Push(btnG26)

btnG27 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnG27.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupG.Push(btnG27)

btnG31 := myGui.Add("Button", btnActNextRow , "ACT BUTTON")
btnG31.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupG.Push(btnG31)

btnG32 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnG32.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupG.Push(btnG32)

btnG33 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnG33.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupG.Push(btnG33)

btnG34 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnG34.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupG.Push(btnG34)

btnG35 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnG35.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupG.Push(btnG35)

btnG36 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnG36.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupG.Push(btnG36)

btnG37 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnG37.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupG.Push(btnG37)

btnG41 := myGui.Add("Button", btnActNextRow , "ACT BUTTON")
btnG41.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupG.Push(btnG41)

btnG42 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnG42.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupG.Push(btnG42)

btnG43 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnG43.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupG.Push(btnG43)

btnG44 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnG44.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupG.Push(btnG44)

btnG45 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnG45.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupG.Push(btnG45)

btnG46 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnG46.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupG.Push(btnG46)

btnG47 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnG47.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupG.Push(btnG47)

btnG51 := myGui.Add("Button", btnActNextRow , "ACT BUTTON")
btnG51.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupG.Push(btnG51)

btnG52 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnG52.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupG.Push(btnG52)

btnG53 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnG53.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupG.Push(btnG53)

btnG54 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnG54.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupG.Push(btnG54)

btnG55 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnG55.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupG.Push(btnG55)

btnG56 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnG56.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupG.Push(btnG56)

btnG57 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnG57.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupG.Push(btnG57)

;---- Section H -----
; Replace your buttons here
; Buttons are formatted as btn[section][row][column]

btnH11 := myGui.Add("Button", btnActFirst , "ACT BUTTON")
btnH11.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupH.Push(btnH11)

btnH12 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnH12.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupH.Push(btnH12)

btnH13 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnH13.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupH.Push(btnH13)

btnH14 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnH14.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupH.Push(btnH14)

btnH15 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnH15.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupH.Push(btnH15)

btnH16 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnH16.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupH.Push(btnH16)

btnH17 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnH17.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupH.Push(btnH17)

btnH21 := myGui.Add("Button", btnActNextRow , "ACT BUTTON")
btnH21.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupH.Push(btnH21)

btnH22 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnH22.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupH.Push(btnH22)

btnH23 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnH23.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupH.Push(btnH23)

btnH24 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnH24.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupH.Push(btnH24)

btnH25 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnH25.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupH.Push(btnH25)

btnH26 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnH26.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupH.Push(btnH26)

btnH27 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnH27.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupH.Push(btnH27)

btnH31 := myGui.Add("Button", btnActNextRow , "ACT BUTTON")
btnH31.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupH.Push(btnH31)

btnH32 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnH32.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupH.Push(btnH32)

btnH33 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnH33.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupH.Push(btnH33)

btnH34 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnH34.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupH.Push(btnH34)

btnH35 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnH35.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupH.Push(btnH35)

btnH36 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnH36.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupH.Push(btnH36)

btnH37 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnH37.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupH.Push(btnH37)

btnH41 := myGui.Add("Button", btnActNextRow , "ACT BUTTON")
btnH41.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupH.Push(btnH41)

btnH42 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnH42.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupH.Push(btnH42)

btnH43 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnH43.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupH.Push(btnH43)

btnH44 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnH44.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupH.Push(btnH44)

btnH45 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnH45.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupH.Push(btnH45)

btnH46 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnH46.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupH.Push(btnH46)

btnH47 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnH47.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupH.Push(btnH47)

btnH51 := myGui.Add("Button", btnActNextRow , "ACT BUTTON")
btnH51.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupH.Push(btnH51)

btnH52 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnH52.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupH.Push(btnH52)

btnH53 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnH53.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupH.Push(btnH53)

btnH54 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnH54.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupH.Push(btnH54)

btnH55 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnH55.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupH.Push(btnH55)

btnH56 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnH56.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupH.Push(btnH56)

btnH57 := myGui.Add("Button", btnActXOffset , "ACT BUTTON")
btnH57.OnEvent("Click", (*) => MsgBox("You clicked me! Replace me with something :)"))
groupH.Push(btnH57)



;------ GROUP EV -----

;group EV is the mini button above the section buttons. put whatever you'd like here

groupEV.Push() ;add the variable name for whatever you make here

;---- DYNAMIC SECTIONS HANDLERS ----

for group in allGroups {
for btn in group {
btn.Visible := false
}
}
; Show default group
   for btn in groupA {
btn.Visible := true
}
HandleGroupClick(targetGroup, *) {
for group in allGroups {
for btn in group {
btn.Visible := (group = targetGroup)
}
}
}

CreateHandler(targetGroup) {
return (*) => HandleGroupClick(targetGroup)
}

btnShowA.OnEvent("Click", CreateHandler(groupA))
btnShowB.OnEvent("Click", CreateHandler(groupB))
btnShowC.OnEvent("Click", CreateHandler(groupC))
btnShowD.OnEvent("Click", CreateHandler(groupD))
btnShowE.OnEvent("Click", CreateHandler(groupE))
btnShowF.OnEvent("Click", CreateHandler(groupF))
btnShowG.OnEvent("Click", CreateHandler(groupG))
btnShowH.OnEvent("Click", CreateHandler(groupH))
btnshowEV.OnEvent("Click", CreateHandler(groupEV))

;---- OTHER HANDLERS ----

;use this section for your event handlers. or don't. i'm not your mom
