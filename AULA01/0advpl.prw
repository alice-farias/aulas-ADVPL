
User Function hello()  // User Function pode ser usado fora da totvs, o "function" sozinho é somente para pessoa que trabalham na totvs
    MsgInfo("Hello, World!", "oi")

Return

// para chamar a função deve ser colocado u_nomedafuncao

User Function logico()

Local verdadeiro := .T. // declarando variavel booleana sem tipagem
Local falso := .F. As Logical // como tipagem

Local ToFeliz := !verdadeiro
MsgInfo(ToFeliz, "To feliz?")
Return


User Function logico2()

Local verdadeiro := .T. 
Local falso := .F. As Logical 

Local ToComFome := .not.falso 
MsgInfo(ToComFome, "To com fome?")
Return

User Function logico3()

Local verdadeiro := .T.
Local falso := .F.

Local ToCansada := !falso
MsgInfo(ToCansada, "To cansada")


