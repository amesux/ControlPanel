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
