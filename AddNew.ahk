#Requires AutoHotkey v2.0
EventHandlerLog := "ControlPanelEventHandlers.ahk"
ControlPanelScript := "ControlPanelFriendlyEdit.ahk"

addGui := Gui("+VScroll")
addGui.Title := "Add New Button"
addGui.SetFont("s12", "Consolas")
addGui.Show("w1024 h700")

addGui.Add("Text", "Center y17 cBlack s14", "Add New Button")
SeeExisting := addGui.Add("Button", "w200 h75 x+20", "See Existing Buttons")
SeeExisting.OnEvent("Click", () => Run(ExistingButtons.ahk)")

AddSection := addGui.Add("Button", "w100 y+20", "Section")
AddSection.OnEvent("Click", ShowAdd())
AddUtility := addGui.Add("Button", "w100 x+20", "Utility")
AddUtility.OnEvent("Click", ShowAdd())
AddAction := addGui.Add("Button", "w100 x+20", "Action")
AddAction.OnEvent("Click", ShowAdd())

;---- SECTION ADD INPUTS ----

SectionAdd := {
addGui.Add("Text", "y+20", "Section: ")
SectionLetter := addGui.Add("DropDownList", "w100 x+20", ["B", "C", "D", "E", "F", "G", "H"])

addGui.Add("Text", "y+20", "New Section Name: ")
NewSectionName := addGui.Add("Edit", "w400 x+20", "")
}
;---- UTILITY BUTTONS ----

UtilityAdd := {
  addGui.Add("Text", "y+20", "Row: ")
  UtilRowNum := addGui.Add("DropDownList", "w100 x+20", ["1", "2", "3", "4", "5", "5"])

  addGui.Add("Text", "y+20", "New Utility Name: ")
  NewUtilName := addGui.Add("Edit", "w400 x+20", "")

  shortscriptutil := addGui.Add("Radio", "y+20", "Short Script (.OnEvent action)")
  longscriptutil := addGui.Add("Radio", , "Long Script (use Event Handler)")
  shortscriptutil.OnEvent("Changed", ToggleControl(ShortScriptUtil))
  longscriptutil.OnEvent("Changed", ToggleControl(LongScriptUtil))

  ShortScriptUtil := {
  addGui.Add("Text", "y+20", "&Short Utility Function:")
  NewUtilFunction := addGui.Add("Edit", "w400", "Write your short script here")
  }
  LongScriptUtil := {
  addGui.Add("Text", "y+20", "Event Handler Name: ")
  NewHandlerName := addGui.Add("Edit", "w100 x+20", "Name")
  UtilHandlerNeedsArg := addGui.Add("Edit", "w100 x+20", "Argument (if needed)") 
  NewUtilHandler := addGui.Add("InputBox", "r999 w900 +HScroll", "Write your long script here")
  }
}

;----- ACT BUTTONS -----

ActAdd := {
  addGui.Add("Text", "y+20", "Row: ")
  ActRowNum := addGui.Add("DropDOwnList", "w100 x+20", ["1", "2", "3", "4", "5", "5"])

  addGui.Add("Text", "y+20", "New Action Name: ")
  NewActName := addGui.Add("Text", "x+20", "")

  addGui.Add("Text", 

;------ HANDLERS -----

ToggleControl(control){
  control.enabled := !control.enabled
}
