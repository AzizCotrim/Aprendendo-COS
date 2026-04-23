Class Aula.Aula6 Extends %RegisteredObject
{
    ClassMethod SemParametros()
    {
        WRITE "Sem parametros", !
    }
    
    ClassMethod ComUmParametro(pNome As %String)
    {
        WRITE "Ola, ",  pNome, "!", !
    }
    
    ClassMethod ComVariosParametros(pNome As %String, pIdade As %Integer, pCidade As %String)
    {
        WRITE "Nome: ",   pNome,   !
        WRITE "Idade: ",  pIdade,  !
        WRITE "Cidade: ", pCidade, !
    }
    
    ClassMethod ComValorPadrao(pNome As %String, pSaudacao As %String = "Olá")
    {
        WRITE pSaudacao, ", ", pNome, "!", !
    }
    
    ClassMethod Somar(pA As %Integer, pB As %Integer)
    {
        Return pA + pB
    }
    
    ClassMethod MontarMensagem(pNome As %String, pNota As %Numeric) As %String
    {
        SET resultado = pNome _ " tirou nota " _ pNota
        IF pNota >= 7 {
            SET resultado = resultado _ " - Aprovado"
        } ELSE {
            SET resultado = resultado _ " - Reprovado"
        }
        Return resultado
    }
    
}
