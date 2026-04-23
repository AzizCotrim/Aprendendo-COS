Class Aula.Aula4 Extends %RegisteredObject
{
ClassMethod Start()
{
    WRITE "=== Aula 4 - Arrays ===", !

    SET frutas("a") = "Maca"
    SET frutas("b") = "Banana"
    SET frutas("c") = "Uva"
    SET frutas("d") = "Manga"

    WRITE "Lista de frutas:",! 
    SET chave = ""
    FOR {
        SET chave = $ORDER(frutas(chave))
        QUIT:(chave = "")
        WRITE chave, " = ", frutas(chave), !
    }

    SET notas(1) = 8.5
    SET notas(2) = 7.0
    SET notas(3) = 9.5
    SET notas(4) = 6.0

    SET total = 0
    SET qtd = 0
    SET i = ""
    FOR {
        SET i = $ORDER(notas(i))
        QUIT:(i = "")
        SET total = total + notas(i)
        SET qtd = qtd + 1
    }
    WRITE "Média: ", total/qtd, !
}

}
