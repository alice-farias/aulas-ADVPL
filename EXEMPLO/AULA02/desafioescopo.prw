// Vari�vel de contador

User Function controleAcessos()
    entrada()
Return

Static totalAcessos := 0
Static ultimoID := ""

Static Function entrada()
    Local entrada

    While .T.
        entrada := FwInputBox( "Digite o seu ID ou Q para sair:" )
        If entrada == "Q"
            Exit
        EndIf

        registraAcesso( entrada )
    EndDo

    msgInfo( "Contador total de acessos: " + Str( totalAcessos ) )


    consultaUltimoID()
    totalAcessos()
return

// Fun��o que registra o acesso
Static Function registraAcesso( cID )
    Local localID := cID

    // Incrementando contadores
    totalAcessos++

    // Armazenando o �ltimo ID registrado

    msgInfo( "Acesso registrado para o ID: " + localID )

Return

// Fun��o que consulta o �ltimo ID registrado (vari�vel Private)
Static Function consultaUltimoID()

    If Type( "ultimoID" ) == "C"
        msgInfo( "�ltimo ID registrado foi: " + ultimoID )
    Else
        msgInfo( "Nenhum ID foi registrado ainda." )
    EndIf

Return

// Fun��o para exibir o total de acessos globais
Static Function totalAcessos()
    msgInfo( "Total de acessos globais: " + Str( totalAcessos ) )
Return
