Class Aula.Aula1 Extends %RegisteredObject
{

ClassMethod Start()
{
    WRITE "=== Aula 1 - Primeiros Comandos ===", !

    SET nome = "Joao"
    SET idade = 25
    WRITE "Nome: ", nome, !
    WRITE "Idade: ", idade, !

    WRITE "10 / 3 = ", 10/3, !
    WRITE "10 \ 3 = ", 10\3, !
    WRITE "10 # 3 = ", 10#3, !

    IF idade >= 18 {
        WRITE "Maior de idade", !
    } ELSE {
        WRITE "Menor de idade", !
    }
}

}
