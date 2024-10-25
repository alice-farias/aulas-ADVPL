// Enunciado do Exercício:
// Objetivo: Criar um programa que gerencie uma lista de frutas fornecidas pelo usuário, permitindo a busca por uma fruta específica e ordenando a lista de frutas.

// Instruções:
// Entrada de Frutas: O programa deve solicitar ao usuário que insira 5 frutas, uma por vez, e armazená-las em um array.
// Busca de uma Fruta: Após a inserção das frutas, o programa deve pedir ao usuário que insira o nome de uma fruta para pesquisar na lista. Caso a fruta seja encontrada, o programa deve exibir sua posição no array.
// Ordenação da Lista: Depois da busca, o programa deve ordenar a lista de frutas em ordem alfabética.
// Nova Busca na Lista Ordenada: Após a ordenação, o programa deve pesquisar novamente pela mesma fruta e exibir sua nova posição no array ordenado.
// Exibição das Frutas: Por fim, o programa deve exibir todas as frutas da lista em uma mensagem, uma abaixo da outra.
// Requisitos:
// Utilize um While para garantir que o programa só permita a inserção de 5 frutas.
// Utilize AScan para realizar a busca pela fruta inserida pelo usuário.
// Utilize ASort para ordenar o array de frutas.
// Exiba a lista completa de frutas após a ordenação.
// Dica: Utilize FwInputBox para coletar os dados do usuário e MsgInfo para exibir os resultados.
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
    MsgInfo("A fruta está na posição " + cValToChar(nIndex),"Resultado")

    ASort(aFrutas)

    nIndex := AScan( aFrutas, { |item| item == cPesquisa } )
    MsgInfo("A fruta está na posição " + cValToChar(nIndex),"Resultado")

    cFrutas := ""

    For nX:= 1 to Len( aFrutas )
        cFrutas += aFrutas[nX] + CRLF
    Next

    MsgInfo( cFrutas, "Frutas")


return
