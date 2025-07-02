#Requires AutoHotkey v2.0

buttonsfile := "insert url here"
varfile := "insert path here"

FileAppend(buttonsfile, AppendButtons())

rows := [1, 2, 3, 4, 5]
cols := [1, 2, 3, 4, 5, 6]
sections := ["A", "B", "C", "D", "E", "F", "G", "H"]

AppendButtons(){
    for row in rows{
        for col in cols{
            for sec in sections{
                "btn" . sec . row . col . " := controlGui.AddButton(btnStandard . "
                if(row = 1 and col = 1){
                    '"' . " x42 y109" . '"'
                } else if (row > 1 and col = 1) {
                 '"' . " x42 y+20"
                } else {
                 '"' . " x+20" . '"'
                }
                ", ar" . row . "c" . col . ")`n"
                "btn" . sec . row . col . ".OnEvent(" . '"' "Click" . '"' . ", (*) => ar" . row . "c" . col . "act)`n"
                "groupA.Push(btn" . sec . row . col . ")`n`n"
            }
        }
    }
}
