#include "protheus.ch""

//https://tdn.totvs.com/pages/viewpage.action?pageId=6063768
user function array()
    Local aVariavel1
    Local aVariavel2 As Array
    Local aVariavel3 := {} As Array
    Local nX
    Local nIndex

    aVariavel3 := { 1, 2, 3, 4, 5 }
    aVariavel3[ 1 ] := 10

    aVariavel2 := Array( 10)
    aVariavel2 := Array( 10, "a" )
    aVariavel2 := Array( 10, 2, "a" )

    msgInfo( "Tamanho do array: " + Str( Len( aVariavel2 ) ), "aVariavel2" )
    msgInfo( "Tamanho do array: " + Str( Len( aVariavel2[1] ) ), "aVariavel2" )

    AAdd( aVariavel3 , 6 )

    aVariavel1 := aVariavel3
    aVariavel1[ 1 ] := "mudei"

    MsgInfo(aVariavel1[ 1 ],"aVariavel1")
    MsgInfo(aVariavel3[ 1 ],"aVariavel3")

    aVariavel1 := AClone( aVariavel3 )
    aVariavel1[ 1 ] := "mudeideNovo"

    MsgInfo(aVariavel1[ 1 ],"aVariavel1")
    MsgInfo(aVariavel3[ 1 ],"aVariavel3")

    ADel( aVariavel3, 3 )

    MsgInfo( Len(aVariavel3), "aVariavel3")

    For nX:= 1 to Len( aVariavel3 )
        MsgInfo( aVariavel3[nX], "aVariavel3")
    Next

    ASize(aVariavel3, Len(aVariavel3) - 1 )

    MsgInfo( Len(aVariavel3), "aVariavel3")

    For nX:= 1 to Len( aVariavel3 )
        MsgInfo( aVariavel3[nX], "aVariavel3")
    Next

    AFill(aVariavel3, "valor" )

    For nX:= 1 to Len( aVariavel3 )
        MsgInfo( aVariavel3[nX], "aVariavel3")
    Next

    aVariavel3 := { 1, 2, 3, 4, 5 }

    nIndex := AScan( aVariavel3, { |item| item == 3 } )
    nIndex := AScan( aVariavel3, 3 )

    aVariavel3 := {}
    AAdd(aVariavel3, "Banana")
    AAdd(aVariavel3, "Ma��")
    AAdd(aVariavel3, "P�ra")
    AAdd(aVariavel3, "Lim�o")
    AAdd(aVariavel3, "Abacaxi")
    AAdd(aVariavel3, "Laranja")
    AAdd(aVariavel3, "Mam�o")
    AAdd(aVariavel3, "Graviola")

    ASort(aVariavel3)

    For nX:= 1 to Len( aVariavel3 )
        MsgInfo( aVariavel3[nX], "aVariavel3")
    Next

    ASort(aVariavel3, , , { |item1, item2| item1 > item2 } )

    For nX:= 1 to Len( aVariavel3 )
        MsgInfo( aVariavel3[nX], "aVariavel3")
    Next

    MsgInfo( ATail(aVariavel3), "aVariavel3" )
return


