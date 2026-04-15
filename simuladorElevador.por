programa
{
    inteiro andarAtual = 0
    inteiro destino
    inteiro opcao = -1
    inteiro pessoas

    funcao inicio()
    {
        enquanto (opcao != 0)
        {
            escreva("\n=== SIMULADOR DE ELEVADOR ===\n")
            escreva("1 - Escolher andar\n")
            escreva("2 - Ver andar atual\n")
            escreva("0 - Sair\n")
            escreva("Opção: ")
            leia(opcao)

            se (opcao == 1)
            {
                // 👥 Controle de pessoas
                escreva("Quantas pessoas entram no elevador? ")
                leia(pessoas)

                se (pessoas > 5)
                {
                    escreva("❌ Excesso de pessoas! Máximo permitido: 5\n")
                }
                senao
                {
                    escreva("✅ Pessoas dentro do limite\n")

                    // Escolher andar
                    escreva("Digite o andar (0 a 6): ")
                    leia(destino)

                    // Validação
                    se (destino < 0 ou destino > 6)
                    {
                        escreva("❌ Andar inválido!\n")
                    }
                    senao
                    {
                        se (destino > andarAtual)
                        {
                            enquanto (andarAtual < destino)
                            {
                                andarAtual++
                                escreva("🔼 Subindo... Andar ", andarAtual, "\n")
                                escreva("🔊 Você está no andar ", andarAtual, "\n")
                            }
                        }
                        senao se (destino < andarAtual)
                        {
                            enquanto (andarAtual > destino)
                            {
                                andarAtual--
                                escreva("🔽 Descendo... Andar ", andarAtual, "\n")
                                escreva("🔊 Você está no andar ", andarAtual, "\n")
                            }
                        }
                        senao
                        {
                            escreva("⚠️ Já está no mesmo andar!\n")
                        }

                        escreva("🔔 Ding! Chegou ao andar ", andarAtual, "\n")
                    }
                }
            }
            senao se (opcao == 2)
            {
                escreva("📍 Andar atual: ", andarAtual, "\n")
            }
            senao se (opcao == 0)
            {
                escreva("Encerrando sistema...\n")
            }
            senao
            {
                escreva("❌ Opção inválida!\n")
            }
        }
    }
}
