programa
{
inteiro andarActual=0
inteiro destino
	
	funcao inicio()
	{
		escreva("=== SIMULADOR DE ELEVADOR===\n")
		escreva("Andar actual: ", andarActual, "\n")

		escreva("Digite o andar (1 a):")
		leia (destino)

		// Validação

		se (destino < 1 ou destino > 6)
		{
			
			escreva("ERRO: Andar inválido! Digite entre 1 e 6.\n")
		}

			senao
			{
				se (destino > andarActual)

				{
			enquanto (andarActual < destino)
			{
				andarActual++
				escreva(" Subindo ..... Andar: ", andarActual, "\n")

			}
		}
		senao se (destino < andarActual)
		{
			enquanto (andarActual > destino)
			{
				andarActual --
		
				escreva(" Descendo ..... Andar: ", andarActual, "\n")
			}
		}
	senao
	{
	escreva(" Voce Já está no mesmo Andar!\n")

	}
	
	escreva(" Parabéns Voce Chegou ao Andar Desejado", andarActual, "\n") 
	
			}
		}
	}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 32; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */