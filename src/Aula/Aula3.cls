Class Aula.Aula3 Extends %RegisteredObject
{
ClassMethod Start()
{
    WRITE "=== Aula 3 - Funcoes do Sistema ===", !

    SET frase = "Olá, mundo COS!"
    WRITE "Tamanho: ",    $LENGTH(frase), !
    WRITE "Maiúsculo: ",  $ZCONVERT(frase, "U"), !
    WRITE "Minúsculo: ",  $ZCONVERT(frase, "L"), !
    WRITE "Trecho: ",     $EXTRACT(frase, 1, 3), !

    SET csv = "João,25,Desenvolvedor,São Paulo"
    WRITE "Nome: ",   $PIECE(csv, ",", 1), !
    WRITE "Idade: ",  $PIECE(csv, ",", 2), !
    WRITE "Cargo: ",  $PIECE(csv, ",", 3), !
    WRITE "Cidade: ", $PIECE(csv, ",", 4), !

    WRITE "Horolog: ",    $HOROLOG, !
    WRITE "Data atual: ", $ZDATE($HOROLOG, 4), !
}

}
