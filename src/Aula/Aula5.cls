Class Aula.Aula5 Extends %RegisteredObject
{
    ClassMethod Gravar()
    {
        SET ^Produtos(1, "nome") = "Notebook"
        SET ^Produtos(1, "preco") = 3500.00
        SET ^Produtos(1, "qtd") = 10
        
        SET ^Produtos(2, "nome") = "Mouse"
        SET ^Produtos(2, "preco") = 150.00
        SET ^Produtos(2, "qtd") = 50

        SET ^Produtos(3, "nome") = "Teclado"
        SET ^Produtos(3, "preco") = 300.00
        SET ^Produtos(3, "qtd") = 30

        WRITE "Produtos gravados", !
    }

    ClassMethod Listar()
    {
        WRITE "=== Produtos ===", !
        SET i = ""
        FOR {
            SET i = $ORDER(^Produtos(i))
            QUIT:(i = "")
            WRITE i, ": ", ^Produtos(i, "nome")
            WRITE "- R$ ", ^Produtos(i, "preco")
            WRITE "- Qtd: ", ^Produtos(i, "qtd"), !
        }
    }

    ClassMethod Deletar()
    {
        KILL ^Produtos
        WRITE "Global deletado!", !
    }
}
