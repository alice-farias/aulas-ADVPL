// Exemplo de vari�vel Static
Static staticVar := 0 // Vari�vel Static, persiste entre as chamadas das fun��es

User Function escopos()
    exLocal()
    exPublicPrivate()
    exStatic()
    

    // Verificando o valor de uma vari�vel p�blica
    If Type( "publicVar" ) == "C"
        msgInfo( "Fora de exemploPublicPrivate - Public: " + publicVar)
    Else
        msgInfo( "Vari�vel p�blica n�o existe" )
    EndIf


    If Type( "privateVar" ) == "C"
        msgInfo( "Dentro de exemploPublicPrivate - Private: " + privateVar )
    Else
        msgInfo( "Vari�vel Private n�o existe" )
    EndIf

Return

// Exemplo de vari�veis Locais
Static Function exLocal()
    Local localVar := "valorLocal"

    // Vari�vel Local, dispon�vel apenas dentro dessa fun��o
    msgInfo( "Valor da vari�vel Local: " + localVar )

    // Passando a vari�vel local por valor para outra fun��o
    alteraLocal(localVar)
    msgInfo( "Ap�s passar por valor: " + localVar )

    // Passando a vari�vel local por refer�ncia
    alteraReferencia( @localVar )
    msgInfo( "Ap�s passar por refer�ncia: " + localVar )

Return

// Fun��o que altera vari�vel local por valor
Static Function alteraLocal( localVar )
    localVar := "alteradoPorValor"
    msgInfo( "Dentro de alteraLocal: " + localVar )
Return

// Fun��o que altera vari�vel local por refer�ncia
Static Function alteraReferencia( localVar )
    localVar := "alteradoPorReferencia"
    msgInfo( "Dentro de alteraReferencia: " + localVar )
Return

// Exemplo de Public e Private
Static Function exPublicPrivate()
    Public publicVar := "Sou P�blica"
    Private privateVar := "Sou Privada"

    msgInfo( "Dentro de exemploPublicPrivate - Public: " + publicVar )
    msgInfo( "Dentro de exemploPublicPrivate - Private: " + privateVar )

    exPrivate()
Return

// Exemplo de Vari�veis private
Static Function exPrivate()

    If Type( "privateVar" ) == "C"
        msgInfo( "Dentro de exemploPublicPrivate - Private: " + privateVar )
    Else
        msgInfo( "Vari�vel Private n�o existe" )
    EndIf

Return

// Exemplo de Static e sua persist�ncia entre chamadas
Static Function exStatic()
    Static exemploStatic := 0

    exemploStatic += 1
    staticVar += 1 // staticVar foi declarada no escopo do fonte, persiste entre fun��es

    msgInfo( "Static declarada dentro do fonte: " + Str(exemploStatic) )
    msgInfo( "Static Global: " + Str(staticVar) )
Return
