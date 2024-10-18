User Function UsandoIf()

Local valor := FwInputBox("Insira V ou F")

if valor == "V"
    MsgInfo("Verdadeiro", "oi")
else
    MsgInfo("Falso", "oi")
EndIf
    

Do Case

    Case valor == "V"
        MsgInfo("Verdadeiro")
    Case valor == "F"
        MsgInfo("Falso")
    Otherwise
    MsgInfo("Digite uma letra valida")
EndCase

Return
