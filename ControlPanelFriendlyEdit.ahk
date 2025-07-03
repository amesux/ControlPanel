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

;act buttons

btnA11 := controlGui.AddButton(btnStandard, Ar1c1)
btnA11.OnEvent("Click", (*) => Ar1c1act)
groupA.Push(btnA11)

btnB11 := controlGui.AddButton(btnStandard, Br1c1)
btnB11.OnEvent("Click", (*) => Br1c1act)
groupA.Push(btnB11)

btnC11 := controlGui.AddButton(btnStandard, Cr1c1)
btnC11.OnEvent("Click", (*) => Cr1c1act)
groupA.Push(btnC11)

btnD11 := controlGui.AddButton(btnStandard, Dr1c1)
btnD11.OnEvent("Click", (*) => Dr1c1act)
groupA.Push(btnD11)

btnE11 := controlGui.AddButton(btnStandard, Er1c1)
btnE11.OnEvent("Click", (*) => Er1c1act)
groupA.Push(btnE11)

btnF11 := controlGui.AddButton(btnStandard, Fr1c1)
btnF11.OnEvent("Click", (*) => Fr1c1act)
groupA.Push(btnF11)

btnG11 := controlGui.AddButton(btnStandard, Gr1c1)
btnG11.OnEvent("Click", (*) => Gr1c1act)
groupA.Push(btnG11)

btnH11 := controlGui.AddButton(btnStandard, Hr1c1)
btnH11.OnEvent("Click", (*) => Hr1c1act)
groupA.Push(btnH11)

btnA12 := controlGui.AddButton(btnStandard, Ar1c2)
btnA12.OnEvent("Click", (*) => Ar1c2act)
groupA.Push(btnA12)

btnB12 := controlGui.AddButton(btnStandard, Br1c2)
btnB12.OnEvent("Click", (*) => Br1c2act)
groupA.Push(btnB12)

btnC12 := controlGui.AddButton(btnStandard, Cr1c2)
btnC12.OnEvent("Click", (*) => Cr1c2act)
groupA.Push(btnC12)

btnD12 := controlGui.AddButton(btnStandard, Dr1c2)
btnD12.OnEvent("Click", (*) => Dr1c2act)
groupA.Push(btnD12)

btnE12 := controlGui.AddButton(btnStandard, Er1c2)
btnE12.OnEvent("Click", (*) => Er1c2act)
groupA.Push(btnE12)

btnF12 := controlGui.AddButton(btnStandard, Fr1c2)
btnF12.OnEvent("Click", (*) => Fr1c2act)
groupA.Push(btnF12)

btnG12 := controlGui.AddButton(btnStandard, Gr1c2)
btnG12.OnEvent("Click", (*) => Gr1c2act)
groupA.Push(btnG12)

btnH12 := controlGui.AddButton(btnStandard, Hr1c2)
btnH12.OnEvent("Click", (*) => Hr1c2act)
groupA.Push(btnH12)

btnA13 := controlGui.AddButton(btnStandard, Ar1c3)
btnA13.OnEvent("Click", (*) => Ar1c3act)
groupA.Push(btnA13)

btnB13 := controlGui.AddButton(btnStandard, Br1c3)
btnB13.OnEvent("Click", (*) => Br1c3act)
groupA.Push(btnB13)

btnC13 := controlGui.AddButton(btnStandard, Cr1c3)
btnC13.OnEvent("Click", (*) => Cr1c3act)
groupA.Push(btnC13)

btnD13 := controlGui.AddButton(btnStandard, Dr1c3)
btnD13.OnEvent("Click", (*) => Dr1c3act)
groupA.Push(btnD13)

btnE13 := controlGui.AddButton(btnStandard, Er1c3)
btnE13.OnEvent("Click", (*) => Er1c3act)
groupA.Push(btnE13)

btnF13 := controlGui.AddButton(btnStandard, Fr1c3)
btnF13.OnEvent("Click", (*) => Fr1c3act)
groupA.Push(btnF13)

btnG13 := controlGui.AddButton(btnStandard, Gr1c3)
btnG13.OnEvent("Click", (*) => Gr1c3act)
groupA.Push(btnG13)

btnH13 := controlGui.AddButton(btnStandard, Hr1c3)
btnH13.OnEvent("Click", (*) => Hr1c3act)
groupA.Push(btnH13)

btnA14 := controlGui.AddButton(btnStandard, Ar1c4)
btnA14.OnEvent("Click", (*) => Ar1c4act)
groupA.Push(btnA14)

btnB14 := controlGui.AddButton(btnStandard, Br1c4)
btnB14.OnEvent("Click", (*) => Br1c4act)
groupA.Push(btnB14)

btnC14 := controlGui.AddButton(btnStandard, Cr1c4)
btnC14.OnEvent("Click", (*) => Cr1c4act)
groupA.Push(btnC14)

btnD14 := controlGui.AddButton(btnStandard, Dr1c4)
btnD14.OnEvent("Click", (*) => Dr1c4act)
groupA.Push(btnD14)

btnE14 := controlGui.AddButton(btnStandard, Er1c4)
btnE14.OnEvent("Click", (*) => Er1c4act)
groupA.Push(btnE14)

btnF14 := controlGui.AddButton(btnStandard, Fr1c4)
btnF14.OnEvent("Click", (*) => Fr1c4act)
groupA.Push(btnF14)

btnG14 := controlGui.AddButton(btnStandard, Gr1c4)
btnG14.OnEvent("Click", (*) => Gr1c4act)
groupA.Push(btnG14)

btnH14 := controlGui.AddButton(btnStandard, Hr1c4)
btnH14.OnEvent("Click", (*) => Hr1c4act)
groupA.Push(btnH14)

btnA15 := controlGui.AddButton(btnStandard, Ar1c5)
btnA15.OnEvent("Click", (*) => Ar1c5act)
groupA.Push(btnA15)

btnB15 := controlGui.AddButton(btnStandard, Br1c5)
btnB15.OnEvent("Click", (*) => Br1c5act)
groupA.Push(btnB15)

btnC15 := controlGui.AddButton(btnStandard, Cr1c5)
btnC15.OnEvent("Click", (*) => Cr1c5act)
groupA.Push(btnC15)

btnD15 := controlGui.AddButton(btnStandard, Dr1c5)
btnD15.OnEvent("Click", (*) => Dr1c5act)
groupA.Push(btnD15)

btnE15 := controlGui.AddButton(btnStandard, Er1c5)
btnE15.OnEvent("Click", (*) => Er1c5act)
groupA.Push(btnE15)

btnF15 := controlGui.AddButton(btnStandard, Fr1c5)
btnF15.OnEvent("Click", (*) => Fr1c5act)
groupA.Push(btnF15)

btnG15 := controlGui.AddButton(btnStandard, Gr1c5)
btnG15.OnEvent("Click", (*) => Gr1c5act)
groupA.Push(btnG15)

btnH15 := controlGui.AddButton(btnStandard, Hr1c5)
btnH15.OnEvent("Click", (*) => Hr1c5act)
groupA.Push(btnH15)

btnA16 := controlGui.AddButton(btnStandard, Ar1c6)
btnA16.OnEvent("Click", (*) => Ar1c6act)
groupA.Push(btnA16)

btnB16 := controlGui.AddButton(btnStandard, Br1c6)
btnB16.OnEvent("Click", (*) => Br1c6act)
groupA.Push(btnB16)

btnC16 := controlGui.AddButton(btnStandard, Cr1c6)
btnC16.OnEvent("Click", (*) => Cr1c6act)
groupA.Push(btnC16)

btnD16 := controlGui.AddButton(btnStandard, Dr1c6)
btnD16.OnEvent("Click", (*) => Dr1c6act)
groupA.Push(btnD16)

btnE16 := controlGui.AddButton(btnStandard, Er1c6)
btnE16.OnEvent("Click", (*) => Er1c6act)
groupA.Push(btnE16)

btnF16 := controlGui.AddButton(btnStandard, Fr1c6)
btnF16.OnEvent("Click", (*) => Fr1c6act)
groupA.Push(btnF16)

btnG16 := controlGui.AddButton(btnStandard, Gr1c6)
btnG16.OnEvent("Click", (*) => Gr1c6act)
groupA.Push(btnG16)

btnH16 := controlGui.AddButton(btnStandard, Hr1c6)
btnH16.OnEvent("Click", (*) => Hr1c6act)
groupA.Push(btnH16)

btnA21 := controlGui.AddButton(btnStandard, Ar2c1)
btnA21.OnEvent("Click", (*) => Ar2c1act)
groupA.Push(btnA21)

btnB21 := controlGui.AddButton(btnStandard, Br2c1)
btnB21.OnEvent("Click", (*) => Br2c1act)
groupA.Push(btnB21)

btnC21 := controlGui.AddButton(btnStandard, Cr2c1)
btnC21.OnEvent("Click", (*) => Cr2c1act)
groupA.Push(btnC21)

btnD21 := controlGui.AddButton(btnStandard, Dr2c1)
btnD21.OnEvent("Click", (*) => Dr2c1act)
groupA.Push(btnD21)

btnE21 := controlGui.AddButton(btnStandard, Er2c1)
btnE21.OnEvent("Click", (*) => Er2c1act)
groupA.Push(btnE21)

btnF21 := controlGui.AddButton(btnStandard, Fr2c1)
btnF21.OnEvent("Click", (*) => Fr2c1act)
groupA.Push(btnF21)

btnG21 := controlGui.AddButton(btnStandard, Gr2c1)
btnG21.OnEvent("Click", (*) => Gr2c1act)
groupA.Push(btnG21)

btnH21 := controlGui.AddButton(btnStandard, Hr2c1)
btnH21.OnEvent("Click", (*) => Hr2c1act)
groupA.Push(btnH21)

btnA22 := controlGui.AddButton(btnStandard, Ar2c2)
btnA22.OnEvent("Click", (*) => Ar2c2act)
groupA.Push(btnA22)

btnB22 := controlGui.AddButton(btnStandard, Br2c2)
btnB22.OnEvent("Click", (*) => Br2c2act)
groupA.Push(btnB22)

btnC22 := controlGui.AddButton(btnStandard, Cr2c2)
btnC22.OnEvent("Click", (*) => Cr2c2act)
groupA.Push(btnC22)

btnD22 := controlGui.AddButton(btnStandard, Dr2c2)
btnD22.OnEvent("Click", (*) => Dr2c2act)
groupA.Push(btnD22)

btnE22 := controlGui.AddButton(btnStandard, Er2c2)
btnE22.OnEvent("Click", (*) => Er2c2act)
groupA.Push(btnE22)

btnF22 := controlGui.AddButton(btnStandard, Fr2c2)
btnF22.OnEvent("Click", (*) => Fr2c2act)
groupA.Push(btnF22)

btnG22 := controlGui.AddButton(btnStandard, Gr2c2)
btnG22.OnEvent("Click", (*) => Gr2c2act)
groupA.Push(btnG22)

btnH22 := controlGui.AddButton(btnStandard, Hr2c2)
btnH22.OnEvent("Click", (*) => Hr2c2act)
groupA.Push(btnH22)

btnA23 := controlGui.AddButton(btnStandard, Ar2c3)
btnA23.OnEvent("Click", (*) => Ar2c3act)
groupA.Push(btnA23)

btnB23 := controlGui.AddButton(btnStandard, Br2c3)
btnB23.OnEvent("Click", (*) => Br2c3act)
groupA.Push(btnB23)

btnC23 := controlGui.AddButton(btnStandard, Cr2c3)
btnC23.OnEvent("Click", (*) => Cr2c3act)
groupA.Push(btnC23)

btnD23 := controlGui.AddButton(btnStandard, Dr2c3)
btnD23.OnEvent("Click", (*) => Dr2c3act)
groupA.Push(btnD23)

btnE23 := controlGui.AddButton(btnStandard, Er2c3)
btnE23.OnEvent("Click", (*) => Er2c3act)
groupA.Push(btnE23)

btnF23 := controlGui.AddButton(btnStandard, Fr2c3)
btnF23.OnEvent("Click", (*) => Fr2c3act)
groupA.Push(btnF23)

btnG23 := controlGui.AddButton(btnStandard, Gr2c3)
btnG23.OnEvent("Click", (*) => Gr2c3act)
groupA.Push(btnG23)

btnH23 := controlGui.AddButton(btnStandard, Hr2c3)
btnH23.OnEvent("Click", (*) => Hr2c3act)
groupA.Push(btnH23)

btnA24 := controlGui.AddButton(btnStandard, Ar2c4)
btnA24.OnEvent("Click", (*) => Ar2c4act)
groupA.Push(btnA24)

btnB24 := controlGui.AddButton(btnStandard, Br2c4)
btnB24.OnEvent("Click", (*) => Br2c4act)
groupA.Push(btnB24)

btnC24 := controlGui.AddButton(btnStandard, Cr2c4)
btnC24.OnEvent("Click", (*) => Cr2c4act)
groupA.Push(btnC24)

btnD24 := controlGui.AddButton(btnStandard, Dr2c4)
btnD24.OnEvent("Click", (*) => Dr2c4act)
groupA.Push(btnD24)

btnE24 := controlGui.AddButton(btnStandard, Er2c4)
btnE24.OnEvent("Click", (*) => Er2c4act)
groupA.Push(btnE24)

btnF24 := controlGui.AddButton(btnStandard, Fr2c4)
btnF24.OnEvent("Click", (*) => Fr2c4act)
groupA.Push(btnF24)

btnG24 := controlGui.AddButton(btnStandard, Gr2c4)
btnG24.OnEvent("Click", (*) => Gr2c4act)
groupA.Push(btnG24)

btnH24 := controlGui.AddButton(btnStandard, Hr2c4)
btnH24.OnEvent("Click", (*) => Hr2c4act)
groupA.Push(btnH24)

btnA25 := controlGui.AddButton(btnStandard, Ar2c5)
btnA25.OnEvent("Click", (*) => Ar2c5act)
groupA.Push(btnA25)

btnB25 := controlGui.AddButton(btnStandard, Br2c5)
btnB25.OnEvent("Click", (*) => Br2c5act)
groupA.Push(btnB25)

btnC25 := controlGui.AddButton(btnStandard, Cr2c5)
btnC25.OnEvent("Click", (*) => Cr2c5act)
groupA.Push(btnC25)

btnD25 := controlGui.AddButton(btnStandard, Dr2c5)
btnD25.OnEvent("Click", (*) => Dr2c5act)
groupA.Push(btnD25)

btnE25 := controlGui.AddButton(btnStandard, Er2c5)
btnE25.OnEvent("Click", (*) => Er2c5act)
groupA.Push(btnE25)

btnF25 := controlGui.AddButton(btnStandard, Fr2c5)
btnF25.OnEvent("Click", (*) => Fr2c5act)
groupA.Push(btnF25)

btnG25 := controlGui.AddButton(btnStandard, Gr2c5)
btnG25.OnEvent("Click", (*) => Gr2c5act)
groupA.Push(btnG25)

btnH25 := controlGui.AddButton(btnStandard, Hr2c5)
btnH25.OnEvent("Click", (*) => Hr2c5act)
groupA.Push(btnH25)

btnA26 := controlGui.AddButton(btnStandard, Ar2c6)
btnA26.OnEvent("Click", (*) => Ar2c6act)
groupA.Push(btnA26)

btnB26 := controlGui.AddButton(btnStandard, Br2c6)
btnB26.OnEvent("Click", (*) => Br2c6act)
groupA.Push(btnB26)

btnC26 := controlGui.AddButton(btnStandard, Cr2c6)
btnC26.OnEvent("Click", (*) => Cr2c6act)
groupA.Push(btnC26)

btnD26 := controlGui.AddButton(btnStandard, Dr2c6)
btnD26.OnEvent("Click", (*) => Dr2c6act)
groupA.Push(btnD26)

btnE26 := controlGui.AddButton(btnStandard, Er2c6)
btnE26.OnEvent("Click", (*) => Er2c6act)
groupA.Push(btnE26)

btnF26 := controlGui.AddButton(btnStandard, Fr2c6)
btnF26.OnEvent("Click", (*) => Fr2c6act)
groupA.Push(btnF26)

btnG26 := controlGui.AddButton(btnStandard, Gr2c6)
btnG26.OnEvent("Click", (*) => Gr2c6act)
groupA.Push(btnG26)

btnH26 := controlGui.AddButton(btnStandard, Hr2c6)
btnH26.OnEvent("Click", (*) => Hr2c6act)
groupA.Push(btnH26)

btnA31 := controlGui.AddButton(btnStandard, Ar3c1)
btnA31.OnEvent("Click", (*) => Ar3c1act)
groupA.Push(btnA31)

btnB31 := controlGui.AddButton(btnStandard, Br3c1)
btnB31.OnEvent("Click", (*) => Br3c1act)
groupA.Push(btnB31)

btnC31 := controlGui.AddButton(btnStandard, Cr3c1)
btnC31.OnEvent("Click", (*) => Cr3c1act)
groupA.Push(btnC31)

btnD31 := controlGui.AddButton(btnStandard, Dr3c1)
btnD31.OnEvent("Click", (*) => Dr3c1act)
groupA.Push(btnD31)

btnE31 := controlGui.AddButton(btnStandard, Er3c1)
btnE31.OnEvent("Click", (*) => Er3c1act)
groupA.Push(btnE31)

btnF31 := controlGui.AddButton(btnStandard, Fr3c1)
btnF31.OnEvent("Click", (*) => Fr3c1act)
groupA.Push(btnF31)

btnG31 := controlGui.AddButton(btnStandard, Gr3c1)
btnG31.OnEvent("Click", (*) => Gr3c1act)
groupA.Push(btnG31)

btnH31 := controlGui.AddButton(btnStandard, Hr3c1)
btnH31.OnEvent("Click", (*) => Hr3c1act)
groupA.Push(btnH31)

btnA32 := controlGui.AddButton(btnStandard, Ar3c2)
btnA32.OnEvent("Click", (*) => Ar3c2act)
groupA.Push(btnA32)

btnB32 := controlGui.AddButton(btnStandard, Br3c2)
btnB32.OnEvent("Click", (*) => Br3c2act)
groupA.Push(btnB32)

btnC32 := controlGui.AddButton(btnStandard, Cr3c2)
btnC32.OnEvent("Click", (*) => Cr3c2act)
groupA.Push(btnC32)

btnD32 := controlGui.AddButton(btnStandard, Dr3c2)
btnD32.OnEvent("Click", (*) => Dr3c2act)
groupA.Push(btnD32)

btnE32 := controlGui.AddButton(btnStandard, Er3c2)
btnE32.OnEvent("Click", (*) => Er3c2act)
groupA.Push(btnE32)

btnF32 := controlGui.AddButton(btnStandard, Fr3c2)
btnF32.OnEvent("Click", (*) => Fr3c2act)
groupA.Push(btnF32)

btnG32 := controlGui.AddButton(btnStandard, Gr3c2)
btnG32.OnEvent("Click", (*) => Gr3c2act)
groupA.Push(btnG32)

btnH32 := controlGui.AddButton(btnStandard, Hr3c2)
btnH32.OnEvent("Click", (*) => Hr3c2act)
groupA.Push(btnH32)

btnA33 := controlGui.AddButton(btnStandard, Ar3c3)
btnA33.OnEvent("Click", (*) => Ar3c3act)
groupA.Push(btnA33)

btnB33 := controlGui.AddButton(btnStandard, Br3c3)
btnB33.OnEvent("Click", (*) => Br3c3act)
groupA.Push(btnB33)

btnC33 := controlGui.AddButton(btnStandard, Cr3c3)
btnC33.OnEvent("Click", (*) => Cr3c3act)
groupA.Push(btnC33)

btnD33 := controlGui.AddButton(btnStandard, Dr3c3)
btnD33.OnEvent("Click", (*) => Dr3c3act)
groupA.Push(btnD33)

btnE33 := controlGui.AddButton(btnStandard, Er3c3)
btnE33.OnEvent("Click", (*) => Er3c3act)
groupA.Push(btnE33)

btnF33 := controlGui.AddButton(btnStandard, Fr3c3)
btnF33.OnEvent("Click", (*) => Fr3c3act)
groupA.Push(btnF33)

btnG33 := controlGui.AddButton(btnStandard, Gr3c3)
btnG33.OnEvent("Click", (*) => Gr3c3act)
groupA.Push(btnG33)

btnH33 := controlGui.AddButton(btnStandard, Hr3c3)
btnH33.OnEvent("Click", (*) => Hr3c3act)
groupA.Push(btnH33)

btnA34 := controlGui.AddButton(btnStandard, Ar3c4)
btnA34.OnEvent("Click", (*) => Ar3c4act)
groupA.Push(btnA34)

btnB34 := controlGui.AddButton(btnStandard, Br3c4)
btnB34.OnEvent("Click", (*) => Br3c4act)
groupA.Push(btnB34)

btnC34 := controlGui.AddButton(btnStandard, Cr3c4)
btnC34.OnEvent("Click", (*) => Cr3c4act)
groupA.Push(btnC34)

btnD34 := controlGui.AddButton(btnStandard, Dr3c4)
btnD34.OnEvent("Click", (*) => Dr3c4act)
groupA.Push(btnD34)

btnE34 := controlGui.AddButton(btnStandard, Er3c4)
btnE34.OnEvent("Click", (*) => Er3c4act)
groupA.Push(btnE34)

btnF34 := controlGui.AddButton(btnStandard, Fr3c4)
btnF34.OnEvent("Click", (*) => Fr3c4act)
groupA.Push(btnF34)

btnG34 := controlGui.AddButton(btnStandard, Gr3c4)
btnG34.OnEvent("Click", (*) => Gr3c4act)
groupA.Push(btnG34)

btnH34 := controlGui.AddButton(btnStandard, Hr3c4)
btnH34.OnEvent("Click", (*) => Hr3c4act)
groupA.Push(btnH34)

btnA35 := controlGui.AddButton(btnStandard, Ar3c5)
btnA35.OnEvent("Click", (*) => Ar3c5act)
groupA.Push(btnA35)

btnB35 := controlGui.AddButton(btnStandard, Br3c5)
btnB35.OnEvent("Click", (*) => Br3c5act)
groupA.Push(btnB35)

btnC35 := controlGui.AddButton(btnStandard, Cr3c5)
btnC35.OnEvent("Click", (*) => Cr3c5act)
groupA.Push(btnC35)

btnD35 := controlGui.AddButton(btnStandard, Dr3c5)
btnD35.OnEvent("Click", (*) => Dr3c5act)
groupA.Push(btnD35)

btnE35 := controlGui.AddButton(btnStandard, Er3c5)
btnE35.OnEvent("Click", (*) => Er3c5act)
groupA.Push(btnE35)

btnF35 := controlGui.AddButton(btnStandard, Fr3c5)
btnF35.OnEvent("Click", (*) => Fr3c5act)
groupA.Push(btnF35)

btnG35 := controlGui.AddButton(btnStandard, Gr3c5)
btnG35.OnEvent("Click", (*) => Gr3c5act)
groupA.Push(btnG35)

btnH35 := controlGui.AddButton(btnStandard, Hr3c5)
btnH35.OnEvent("Click", (*) => Hr3c5act)
groupA.Push(btnH35)

btnA36 := controlGui.AddButton(btnStandard, Ar3c6)
btnA36.OnEvent("Click", (*) => Ar3c6act)
groupA.Push(btnA36)

btnB36 := controlGui.AddButton(btnStandard, Br3c6)
btnB36.OnEvent("Click", (*) => Br3c6act)
groupA.Push(btnB36)

btnC36 := controlGui.AddButton(btnStandard, Cr3c6)
btnC36.OnEvent("Click", (*) => Cr3c6act)
groupA.Push(btnC36)

btnD36 := controlGui.AddButton(btnStandard, Dr3c6)
btnD36.OnEvent("Click", (*) => Dr3c6act)
groupA.Push(btnD36)

btnE36 := controlGui.AddButton(btnStandard, Er3c6)
btnE36.OnEvent("Click", (*) => Er3c6act)
groupA.Push(btnE36)

btnF36 := controlGui.AddButton(btnStandard, Fr3c6)
btnF36.OnEvent("Click", (*) => Fr3c6act)
groupA.Push(btnF36)

btnG36 := controlGui.AddButton(btnStandard, Gr3c6)
btnG36.OnEvent("Click", (*) => Gr3c6act)
groupA.Push(btnG36)

btnH36 := controlGui.AddButton(btnStandard, Hr3c6)
btnH36.OnEvent("Click", (*) => Hr3c6act)
groupA.Push(btnH36)

btnA41 := controlGui.AddButton(btnStandard, Ar4c1)
btnA41.OnEvent("Click", (*) => Ar4c1act)
groupA.Push(btnA41)

btnB41 := controlGui.AddButton(btnStandard, Br4c1)
btnB41.OnEvent("Click", (*) => Br4c1act)
groupA.Push(btnB41)

btnC41 := controlGui.AddButton(btnStandard, Cr4c1)
btnC41.OnEvent("Click", (*) => Cr4c1act)
groupA.Push(btnC41)

btnD41 := controlGui.AddButton(btnStandard, Dr4c1)
btnD41.OnEvent("Click", (*) => Dr4c1act)
groupA.Push(btnD41)

btnE41 := controlGui.AddButton(btnStandard, Er4c1)
btnE41.OnEvent("Click", (*) => Er4c1act)
groupA.Push(btnE41)

btnF41 := controlGui.AddButton(btnStandard, Fr4c1)
btnF41.OnEvent("Click", (*) => Fr4c1act)
groupA.Push(btnF41)

btnG41 := controlGui.AddButton(btnStandard, Gr4c1)
btnG41.OnEvent("Click", (*) => Gr4c1act)
groupA.Push(btnG41)

btnH41 := controlGui.AddButton(btnStandard, Hr4c1)
btnH41.OnEvent("Click", (*) => Hr4c1act)
groupA.Push(btnH41)

btnA42 := controlGui.AddButton(btnStandard, Ar4c2)
btnA42.OnEvent("Click", (*) => Ar4c2act)
groupA.Push(btnA42)

btnB42 := controlGui.AddButton(btnStandard, Br4c2)
btnB42.OnEvent("Click", (*) => Br4c2act)
groupA.Push(btnB42)

btnC42 := controlGui.AddButton(btnStandard, Cr4c2)
btnC42.OnEvent("Click", (*) => Cr4c2act)
groupA.Push(btnC42)

btnD42 := controlGui.AddButton(btnStandard, Dr4c2)
btnD42.OnEvent("Click", (*) => Dr4c2act)
groupA.Push(btnD42)

btnE42 := controlGui.AddButton(btnStandard, Er4c2)
btnE42.OnEvent("Click", (*) => Er4c2act)
groupA.Push(btnE42)

btnF42 := controlGui.AddButton(btnStandard, Fr4c2)
btnF42.OnEvent("Click", (*) => Fr4c2act)
groupA.Push(btnF42)

btnG42 := controlGui.AddButton(btnStandard, Gr4c2)
btnG42.OnEvent("Click", (*) => Gr4c2act)
groupA.Push(btnG42)

btnH42 := controlGui.AddButton(btnStandard, Hr4c2)
btnH42.OnEvent("Click", (*) => Hr4c2act)
groupA.Push(btnH42)

btnA43 := controlGui.AddButton(btnStandard, Ar4c3)
btnA43.OnEvent("Click", (*) => Ar4c3act)
groupA.Push(btnA43)

btnB43 := controlGui.AddButton(btnStandard, Br4c3)
btnB43.OnEvent("Click", (*) => Br4c3act)
groupA.Push(btnB43)

btnC43 := controlGui.AddButton(btnStandard, Cr4c3)
btnC43.OnEvent("Click", (*) => Cr4c3act)
groupA.Push(btnC43)

btnD43 := controlGui.AddButton(btnStandard, Dr4c3)
btnD43.OnEvent("Click", (*) => Dr4c3act)
groupA.Push(btnD43)

btnE43 := controlGui.AddButton(btnStandard, Er4c3)
btnE43.OnEvent("Click", (*) => Er4c3act)
groupA.Push(btnE43)

btnF43 := controlGui.AddButton(btnStandard, Fr4c3)
btnF43.OnEvent("Click", (*) => Fr4c3act)
groupA.Push(btnF43)

btnG43 := controlGui.AddButton(btnStandard, Gr4c3)
btnG43.OnEvent("Click", (*) => Gr4c3act)
groupA.Push(btnG43)

btnH43 := controlGui.AddButton(btnStandard, Hr4c3)
btnH43.OnEvent("Click", (*) => Hr4c3act)
groupA.Push(btnH43)

btnA44 := controlGui.AddButton(btnStandard, Ar4c4)
btnA44.OnEvent("Click", (*) => Ar4c4act)
groupA.Push(btnA44)

btnB44 := controlGui.AddButton(btnStandard, Br4c4)
btnB44.OnEvent("Click", (*) => Br4c4act)
groupA.Push(btnB44)

btnC44 := controlGui.AddButton(btnStandard, Cr4c4)
btnC44.OnEvent("Click", (*) => Cr4c4act)
groupA.Push(btnC44)

btnD44 := controlGui.AddButton(btnStandard, Dr4c4)
btnD44.OnEvent("Click", (*) => Dr4c4act)
groupA.Push(btnD44)

btnE44 := controlGui.AddButton(btnStandard, Er4c4)
btnE44.OnEvent("Click", (*) => Er4c4act)
groupA.Push(btnE44)

btnF44 := controlGui.AddButton(btnStandard, Fr4c4)
btnF44.OnEvent("Click", (*) => Fr4c4act)
groupA.Push(btnF44)

btnG44 := controlGui.AddButton(btnStandard, Gr4c4)
btnG44.OnEvent("Click", (*) => Gr4c4act)
groupA.Push(btnG44)

btnH44 := controlGui.AddButton(btnStandard, Hr4c4)
btnH44.OnEvent("Click", (*) => Hr4c4act)
groupA.Push(btnH44)

btnA45 := controlGui.AddButton(btnStandard, Ar4c5)
btnA45.OnEvent("Click", (*) => Ar4c5act)
groupA.Push(btnA45)

btnB45 := controlGui.AddButton(btnStandard, Br4c5)
btnB45.OnEvent("Click", (*) => Br4c5act)
groupA.Push(btnB45)

btnC45 := controlGui.AddButton(btnStandard, Cr4c5)
btnC45.OnEvent("Click", (*) => Cr4c5act)
groupA.Push(btnC45)

btnD45 := controlGui.AddButton(btnStandard, Dr4c5)
btnD45.OnEvent("Click", (*) => Dr4c5act)
groupA.Push(btnD45)

btnE45 := controlGui.AddButton(btnStandard, Er4c5)
btnE45.OnEvent("Click", (*) => Er4c5act)
groupA.Push(btnE45)

btnF45 := controlGui.AddButton(btnStandard, Fr4c5)
btnF45.OnEvent("Click", (*) => Fr4c5act)
groupA.Push(btnF45)

btnG45 := controlGui.AddButton(btnStandard, Gr4c5)
btnG45.OnEvent("Click", (*) => Gr4c5act)
groupA.Push(btnG45)

btnH45 := controlGui.AddButton(btnStandard, Hr4c5)
btnH45.OnEvent("Click", (*) => Hr4c5act)
groupA.Push(btnH45)

btnA46 := controlGui.AddButton(btnStandard, Ar4c6)
btnA46.OnEvent("Click", (*) => Ar4c6act)
groupA.Push(btnA46)

btnB46 := controlGui.AddButton(btnStandard, Br4c6)
btnB46.OnEvent("Click", (*) => Br4c6act)
groupA.Push(btnB46)

btnC46 := controlGui.AddButton(btnStandard, Cr4c6)
btnC46.OnEvent("Click", (*) => Cr4c6act)
groupA.Push(btnC46)

btnD46 := controlGui.AddButton(btnStandard, Dr4c6)
btnD46.OnEvent("Click", (*) => Dr4c6act)
groupA.Push(btnD46)

btnE46 := controlGui.AddButton(btnStandard, Er4c6)
btnE46.OnEvent("Click", (*) => Er4c6act)
groupA.Push(btnE46)

btnF46 := controlGui.AddButton(btnStandard, Fr4c6)
btnF46.OnEvent("Click", (*) => Fr4c6act)
groupA.Push(btnF46)

btnG46 := controlGui.AddButton(btnStandard, Gr4c6)
btnG46.OnEvent("Click", (*) => Gr4c6act)
groupA.Push(btnG46)

btnH46 := controlGui.AddButton(btnStandard, Hr4c6)
btnH46.OnEvent("Click", (*) => Hr4c6act)
groupA.Push(btnH46)

btnA51 := controlGui.AddButton(btnStandard, Ar5c1)
btnA51.OnEvent("Click", (*) => Ar5c1act)
groupA.Push(btnA51)

btnB51 := controlGui.AddButton(btnStandard, Br5c1)
btnB51.OnEvent("Click", (*) => Br5c1act)
groupA.Push(btnB51)

btnC51 := controlGui.AddButton(btnStandard, Cr5c1)
btnC51.OnEvent("Click", (*) => Cr5c1act)
groupA.Push(btnC51)

btnD51 := controlGui.AddButton(btnStandard, Dr5c1)
btnD51.OnEvent("Click", (*) => Dr5c1act)
groupA.Push(btnD51)

btnE51 := controlGui.AddButton(btnStandard, Er5c1)
btnE51.OnEvent("Click", (*) => Er5c1act)
groupA.Push(btnE51)

btnF51 := controlGui.AddButton(btnStandard, Fr5c1)
btnF51.OnEvent("Click", (*) => Fr5c1act)
groupA.Push(btnF51)

btnG51 := controlGui.AddButton(btnStandard, Gr5c1)
btnG51.OnEvent("Click", (*) => Gr5c1act)
groupA.Push(btnG51)

btnH51 := controlGui.AddButton(btnStandard, Hr5c1)
btnH51.OnEvent("Click", (*) => Hr5c1act)
groupA.Push(btnH51)

btnA52 := controlGui.AddButton(btnStandard, Ar5c2)
btnA52.OnEvent("Click", (*) => Ar5c2act)
groupA.Push(btnA52)

btnB52 := controlGui.AddButton(btnStandard, Br5c2)
btnB52.OnEvent("Click", (*) => Br5c2act)
groupA.Push(btnB52)

btnC52 := controlGui.AddButton(btnStandard, Cr5c2)
btnC52.OnEvent("Click", (*) => Cr5c2act)
groupA.Push(btnC52)

btnD52 := controlGui.AddButton(btnStandard, Dr5c2)
btnD52.OnEvent("Click", (*) => Dr5c2act)
groupA.Push(btnD52)

btnE52 := controlGui.AddButton(btnStandard, Er5c2)
btnE52.OnEvent("Click", (*) => Er5c2act)
groupA.Push(btnE52)

btnF52 := controlGui.AddButton(btnStandard, Fr5c2)
btnF52.OnEvent("Click", (*) => Fr5c2act)
groupA.Push(btnF52)

btnG52 := controlGui.AddButton(btnStandard, Gr5c2)
btnG52.OnEvent("Click", (*) => Gr5c2act)
groupA.Push(btnG52)

btnH52 := controlGui.AddButton(btnStandard, Hr5c2)
btnH52.OnEvent("Click", (*) => Hr5c2act)
groupA.Push(btnH52)

btnA53 := controlGui.AddButton(btnStandard, Ar5c3)
btnA53.OnEvent("Click", (*) => Ar5c3act)
groupA.Push(btnA53)

btnB53 := controlGui.AddButton(btnStandard, Br5c3)
btnB53.OnEvent("Click", (*) => Br5c3act)
groupA.Push(btnB53)

btnC53 := controlGui.AddButton(btnStandard, Cr5c3)
btnC53.OnEvent("Click", (*) => Cr5c3act)
groupA.Push(btnC53)

btnD53 := controlGui.AddButton(btnStandard, Dr5c3)
btnD53.OnEvent("Click", (*) => Dr5c3act)
groupA.Push(btnD53)

btnE53 := controlGui.AddButton(btnStandard, Er5c3)
btnE53.OnEvent("Click", (*) => Er5c3act)
groupA.Push(btnE53)

btnF53 := controlGui.AddButton(btnStandard, Fr5c3)
btnF53.OnEvent("Click", (*) => Fr5c3act)
groupA.Push(btnF53)

btnG53 := controlGui.AddButton(btnStandard, Gr5c3)
btnG53.OnEvent("Click", (*) => Gr5c3act)
groupA.Push(btnG53)

btnH53 := controlGui.AddButton(btnStandard, Hr5c3)
btnH53.OnEvent("Click", (*) => Hr5c3act)
groupA.Push(btnH53)

btnA54 := controlGui.AddButton(btnStandard, Ar5c4)
btnA54.OnEvent("Click", (*) => Ar5c4act)
groupA.Push(btnA54)

btnB54 := controlGui.AddButton(btnStandard, Br5c4)
btnB54.OnEvent("Click", (*) => Br5c4act)
groupA.Push(btnB54)

btnC54 := controlGui.AddButton(btnStandard, Cr5c4)
btnC54.OnEvent("Click", (*) => Cr5c4act)
groupA.Push(btnC54)

btnD54 := controlGui.AddButton(btnStandard, Dr5c4)
btnD54.OnEvent("Click", (*) => Dr5c4act)
groupA.Push(btnD54)

btnE54 := controlGui.AddButton(btnStandard, Er5c4)
btnE54.OnEvent("Click", (*) => Er5c4act)
groupA.Push(btnE54)

btnF54 := controlGui.AddButton(btnStandard, Fr5c4)
btnF54.OnEvent("Click", (*) => Fr5c4act)
groupA.Push(btnF54)

btnG54 := controlGui.AddButton(btnStandard, Gr5c4)
btnG54.OnEvent("Click", (*) => Gr5c4act)
groupA.Push(btnG54)

btnH54 := controlGui.AddButton(btnStandard, Hr5c4)
btnH54.OnEvent("Click", (*) => Hr5c4act)
groupA.Push(btnH54)

btnA55 := controlGui.AddButton(btnStandard, Ar5c5)
btnA55.OnEvent("Click", (*) => Ar5c5act)
groupA.Push(btnA55)

btnB55 := controlGui.AddButton(btnStandard, Br5c5)
btnB55.OnEvent("Click", (*) => Br5c5act)
groupA.Push(btnB55)

btnC55 := controlGui.AddButton(btnStandard, Cr5c5)
btnC55.OnEvent("Click", (*) => Cr5c5act)
groupA.Push(btnC55)

btnD55 := controlGui.AddButton(btnStandard, Dr5c5)
btnD55.OnEvent("Click", (*) => Dr5c5act)
groupA.Push(btnD55)

btnE55 := controlGui.AddButton(btnStandard, Er5c5)
btnE55.OnEvent("Click", (*) => Er5c5act)
groupA.Push(btnE55)

btnF55 := controlGui.AddButton(btnStandard, Fr5c5)
btnF55.OnEvent("Click", (*) => Fr5c5act)
groupA.Push(btnF55)

btnG55 := controlGui.AddButton(btnStandard, Gr5c5)
btnG55.OnEvent("Click", (*) => Gr5c5act)
groupA.Push(btnG55)

btnH55 := controlGui.AddButton(btnStandard, Hr5c5)
btnH55.OnEvent("Click", (*) => Hr5c5act)
groupA.Push(btnH55)

btnA56 := controlGui.AddButton(btnStandard, Ar5c6)
btnA56.OnEvent("Click", (*) => Ar5c6act)
groupA.Push(btnA56)

btnB56 := controlGui.AddButton(btnStandard, Br5c6)
btnB56.OnEvent("Click", (*) => Br5c6act)
groupA.Push(btnB56)

btnC56 := controlGui.AddButton(btnStandard, Cr5c6)
btnC56.OnEvent("Click", (*) => Cr5c6act)
groupA.Push(btnC56)

btnD56 := controlGui.AddButton(btnStandard, Dr5c6)
btnD56.OnEvent("Click", (*) => Dr5c6act)
groupA.Push(btnD56)

btnE56 := controlGui.AddButton(btnStandard, Er5c6)
btnE56.OnEvent("Click", (*) => Er5c6act)
groupA.Push(btnE56)

btnF56 := controlGui.AddButton(btnStandard, Fr5c6)
btnF56.OnEvent("Click", (*) => Fr5c6act)
groupA.Push(btnF56)

btnG56 := controlGui.AddButton(btnStandard, Gr5c6)
btnG56.OnEvent("Click", (*) => Gr5c6act)
groupA.Push(btnG56)

btnH56 := controlGui.AddButton(btnStandard, Hr5c6)
btnH56.OnEvent("Click", (*) => Hr5c6act)
groupA.Push(btnH56)