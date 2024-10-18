User Function repeticao()

Local nX := 0
Local condicao := .T.

For nX := 1 to 20 
    if nX %2 == 0
    MsgInfo(nX)
    EndIf
Next

For nX := 2 to 20 step 2
    MsgInfo(nX)
Next

while condicao
MsgInfo("Mensagem número " +cValToChar(nX))
    if nX == 10
    Exit
    EndIf
    nX++
end


