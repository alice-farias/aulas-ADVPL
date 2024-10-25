// Variável de contador

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

// Função que registra o acesso
Static Function registraAcesso( cID )
    Local localID := cID

    // Incrementando contadores
    totalAcessos++

    // Armazenando o último ID registrado

    msgInfo( "Acesso registrado para o ID: " + localID )

Return

// Função que consulta o último ID registrado (variável Private)
Static Function consultaUltimoID()

    If Type( "ultimoID" ) == "C"
        msgInfo( "Último ID registrado foi: " + ultimoID )
    Else
        msgInfo( "Nenhum ID foi registrado ainda." )
    EndIf

Return

// Função para exibir o total de acessos globais
Static Function totalAcessos()
    msgInfo( "Total de acessos globais: " + Str( totalAcessos ) )
Return
