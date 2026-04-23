Class Atividade.Atividade Extends %RegisteredObject
{
    //Verificar se o numero é primo
    ClassMethod VerificarNumPrimo(num As %Integer){
        //Read "Digite um numero", num
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
        
    }

    //Verificar Palindromo
    ClassMethod VerificarPalindromo(){

    }
}
