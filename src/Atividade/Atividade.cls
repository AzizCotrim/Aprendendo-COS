Class Atividade.Atividade Extends %RegisteredObject
{
    //Verificar se o numero é primo
    ClassMethod VerificarNumPrimo(){
        Read "Digite um numero", num
        Set EPrimo = 1

        If ((num < 2) || ((num '= 2) & (num # 2 = 0))) {
            Set EPrimo = 0
        }

        Set i = 3
        While(i * i <= num){
            Set:(num # i = 0) EPrimo = 0
            Quit:(EPrimo = 0)
            Set i = i + 2
        }

        W $CASE(EPrimo, 1: "E primo", :"Nao e primo")
    }

    //Sequencia de Fibonaci ate um numero input
    ClassMethod SeqFibonaci(){
        Read "Numero Limite para a sequencia: ", num
        w !

        Set lista = ##class(%ListOfDataTypes).%New()

        Do lista.Insert(0)
        Do lista.Insert(1)

        Set i = 1
        While (lista.GetAt(lista.Count()) < num){
            Set proximoNum = lista.GetAt(i) + lista.GetAt(i+1)
            Quit:(proximoNum >= num)
            Do lista.Insert(proximoNum)
            Set i = i + 1
        }

        For j = 1:1:lista.Count(){
            w lista.GetAt(j), ", "
        }
    }

    //Verificar Palindromo
    ClassMethod VerificarPalindromo(){
        Read "Digite a palavra que deseja verificar", palavra
        Set revertida = $Reverse(palavra)
        If (palavra = revertida){
            W "A palavra e um Palindromo", !
        } Else {
            W "A palavra nao e um Palindromo", !
        }
    }
}
