// Enunciado do Exerc�cio:
// Objetivo: Criar um programa que gerencie uma lista de frutas fornecidas pelo usu�rio, permitindo a busca por uma fruta espec�fica e ordenando a lista de frutas.

// Instru��es:
// Entrada de Frutas: O programa deve solicitar ao usu�rio que insira 5 frutas, uma por vez, e armazen�-las em um array.
// Busca de uma Fruta: Ap�s a inser��o das frutas, o programa deve pedir ao usu�rio que insira o nome de uma fruta para pesquisar na lista. Caso a fruta seja encontrada, o programa deve exibir sua posi��o no array.
// Ordena��o da Lista: Depois da busca, o programa deve ordenar a lista de frutas em ordem alfab�tica.
// Nova Busca na Lista Ordenada: Ap�s a ordena��o, o programa deve pesquisar novamente pela mesma fruta e exibir sua nova posi��o no array ordenado.
// Exibi��o das Frutas: Por fim, o programa deve exibir todas as frutas da lista em uma mensagem, uma abaixo da outra.
// Requisitos:
// Utilize um While para garantir que o programa s� permita a inser��o de 5 frutas.
// Utilize AScan para realizar a busca pela fruta inserida pelo usu�rio.
// Utilize ASort para ordenar o array de frutas.
// Exiba a lista completa de frutas ap�s a ordena��o.
// Dica: Utilize FwInputBox para coletar os dados do usu�rio e MsgInfo para exibir os resultados.
#include "protheus.ch"

user function darray()
    Local aFrutas := {}
    Local cPesquisa
    Local cFruta
    Local cFrutas
    Local nIndex
    Local nX

    While Len(aFrutas) < 5
        cFruta := FwInputBox("Insira uma fruta")
        AAdd( aFrutas, cFruta )
    EndDo

    cPesquisa := FwInputBox("Qual a fruta a pesquisar?")
    nIndex := AScan( aFrutas, cPesquisa )
    MsgInfo("A fruta est� na posi��o " + cValToChar(nIndex),"Resultado")

    ASort(aFrutas)

    nIndex := AScan( aFrutas, { |item| item == cPesquisa } )
    MsgInfo("A fruta est� na posi��o " + cValToChar(nIndex),"Resultado")

    cFrutas := ""

    For nX:= 1 to Len( aFrutas )
        cFrutas += aFrutas[nX] + CRLF
    Next

    MsgInfo( cFrutas, "Frutas")


return
