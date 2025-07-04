#Requires AutoHotkey v2.0

variablesfile := "ButtonVars.ahk"
eventhandlerfile := "ControlPanelEventHandlers.ahk"
sections := ["A", "B", "C", "D", "E", "F", "G", "H"]
rows := [1, 2, 3, 4, 5]
columns := [1, 2, 3, 4, 5, 6, 7]

existingvarlist := FileRead(variablesfile)

existingbuttons := StrSplit(Trim(existingvarlist), "`n")

/* variables in need of defintion in gui
newactbtnname (name of act button)
newaction (action)
eventhandlerscript (neweventhandler)
*/

found := false 
buttons := ""
buttonline := ""
buttonvar := ""

;---- GUI Start here ----

buttongui := Gui()
buttongui.Title := "Button Maker"
buttongui.AddText(, "Section")
sec := buttongui.AddDropDownList(, sections)
buttongui.AddText(, "Row")
row := buttongui.AddDropDownList(, rows)
buttongui.AddText(, "Columns")
col := buttongui.AddText(, columns)

newbuttonname := sec.Text . "r" . row.Value . "c" . col.Value
newbuttonaction := sec.Text . "r" . row.Value . "c" . col.Value . "act"

;--- new button name (add if else for action vs name later)

for index, buttons in existingbuttons {
    buttonline := StrSplit(Trim(buttons), " := ")
    buttonvar := buttonline[1]
    if (buttonvar = newbuttonname) {
        found := true
        break
    }
}

if(found = true){
    buttonline[2] := newactbtnname
    newbutton := buttonline[1] . " := " . buttonline[2]

} else if (found != true){
    newbutton := newbuttonname . " := " newactbtnname
}

;--- new button action

for index, buttons in existingbuttons {
    buttonline := StrSplit(Trim(buttons), " := ")
    buttonvar := buttonline[1]
    if (buttonvar = newbuttonaction) {
        found := true
        break
    }
}

if (found = true){
    buttonline[2] := newaction
    newbutton := buttonline[1] . " := " . buttonline[2]
} else if (found != true){
    newbutton := newbuttonaction . " := " . newaction
}

neweventhandler := eventhandlerscript.Value

FileAppend("`n"neweventhandler, eventhandlerfile)

FileAppend(newbutton, variablesfile)

if FileExist(variablesfile){
    MsgBox("Added button: " . newbuttonname)
} else {
    "Unable to add button"
}  