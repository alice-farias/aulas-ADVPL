user function LojaMoveis()

Local Nome As Character
Local Movel As Character
Local Valor As Numeric
Local parcelas As Numeric
Local valor_parcela As Numeric
Local i As Numeric

Nome := FwInputBox("Digite seu nome")
MsgInfo("Seja bem vindo, " + nome)
Movel := FwInputBox("Qual móvel gostaria de comprar?")
Valor := FwInputBox("Perfeito! Qual é o valor?")

parcelas := FwInputBox("Entendi! Em quantas parcelas?")
valor_parcela := valor / parcelas



// essa parte eu nao fiz, preciso estudar: 

For i := 1 To parcelas
datas_parcelas := datas_parcelas + " " + dToC(Date() + i*30)
Next

MsgInfo("O totaal da sua compra foi de " + movel + "é de R$" + cValToChar(valor) + ".", "resultado")
MsgInfo("A compra foi dividida em " + cValToChar(parcelas) + "de R$ " cValToChar(valor_parcela) + ".")
MsgInfo(datas_parcelas)



return
