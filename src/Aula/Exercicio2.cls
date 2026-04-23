Class Aula.Exercicio2 Extends %RegisteredObject
{
    ClassMethod Cadastrar()
    {
        SET ^Estoque(1, "nome") = "Monitor"
        SET ^Estoque(1, "qtd") = 5

        SET ^Estoque(2, "nome") = "Mouse"
        SET ^Estoque(2, "qtd") = 3

        SET ^Estoque(3, "nome") = "Teclado"
        SET ^Estoque(3, "qtd") = 2

        WRITE "Produtos Cadastrados", !
    }

    ClassMethod Entrada(pId As %Integer, pQtd As %Integer)
    {
        SET estoque = ^Estoque(pId, "qtd")
        SET ^Estoque(pId, "qtd") = estoque + pQtd
    }

    ClassMethod Saida(pId As %Integer, pQtd As %Integer)
    {
        SET estoque = ^Estoque(pId, "qtd")
        IF pQtd > estoque {
            WRITE "Estoque insuficiente", !
        } ELSE {
            SET ^Estoque(pId, "qtd") = estoque - pQtd
            WRITE "Saida Registrada", !
        }
    }

    ClassMethod Relatorio()
    {
        WRITE "Lista de Produtos do Estoque", !

        SET i = ""
        FOR {
            SET i = $ORDER(^Estoque(i))
            QUIT:(i = "")
            WRITE i, " - ", ^Estoque(i, "nome")
            WRITE " qtd: ", ^Estoque(i, "qtd"), !
        }
    }
}
