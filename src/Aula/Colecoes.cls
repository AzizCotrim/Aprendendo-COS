Class Aula.Colecoes Extends %RegisteredObject
{
    ClassMethod TestarLista()
    {
        Set lista = ##class(%ListOfDataTypes).%New()

        Do lista.Insert("Maca")
        Do lista.Insert("Banana")
        Do lista.Insert("Uva")

        W "Tamanho: ", lista.Couunt(), !

        ; Acessar por indice (comeca em 1)
        W lista.GetAt(1), !

        ; Iterar
        For i = 1:1:lista.Count() {
            W lista.GetAt(i), !
        }

        ; Remover
        Do lista.RemoveAt(2)
        W "Apos remover: ", lista.Count(), !
    }

    ClassMethod TestarArray(){
        Set arr = ##class(%ArrayOfDataTypes).%New()

        Do arr.SetAt("Joao", "nome")
        Do arr.SetAt("25", "idade")
        Do arr.SetAt("Sao Paulo", "cidade")

        W "Nome: ", arr.GetAt("nome"), !
        W "Idade: ", arr.GetAt("idade"), !
        W "Cidade: ", arr.GetAt("cidade"), !

        W "Tamanho: ", arr.Count(), !

        ; Iterar
        Set chave = ""
        For {
            Set valor = arr.GetNext(.chave)
            Quit:(chave = "")
            W chave, " = ", valor, !
        }
    }
}
