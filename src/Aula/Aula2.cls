Class Aula.Aula2 Extends %RegisteredObject
{
ClassMethod Start()
{
    WRITE "=== Aula 2 - Loops ===", !

    WRITE "Contando de 1 a 5:", !
    FOR i = 1:1:5 {
        WRITE i, !
    }

    WRITE "Numeros pares", !
    FOR i = 0:2:10 {
        WRITE i, " "
    }
    WRITE !

    WRITE "Contagem regressiva:", !
    FOR i = 5:-1:1 {
        WRITE i, " "
    }
    WRITE !

    WRITE "Quadrados ate 100:", !
    SET n = 1
    FOR {
        SET quadrado = n * n
        QUIT:(quadrado > 100)
        WRITE n, " ao quadrado = ", quadrado, !
        SET n = n + 1
    }
}

}
