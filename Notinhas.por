programa
{
	inclua biblioteca Matematica
	inclua biblioteca Util

	inteiro ponteiro = 0, n = 0, qntd_nota, opcao // Poderia ser cadeia tbm, mais facil e n tem erro de errar e apertar -1232 ou 123
	real mat, port, ing, bio, qui, fis, socio, filo, geo, edf, art, hist, nota[10], media = 0.0, soma = 0
	caracter confirmar
	 
	funcao inicio()
	{
			 limpa()
			 escreva("======================================\n")   
			 escreva("    Sistema de cadastro de médias\n")
			 escreva("======================================\n")
					escreva("	1 - Inserir nova média\n")
					escreva("	2 - Listar médias\n")
					escreva("	3 - Sair\n")
			escreva("======================================\n")

			leia(opcao)
			
				escolha(opcao)
				{
					caso 1:
					{
						limpa()
						 escreva("=============================================================\n")
						escreva("        Qual matéria você deseja inserir as notas?\n")
						 escreva("=============================================================\n")

						escreva(" 1 - Matemática 4 - Biologia 7 - Sociologia  10 - Artes\n")
						escreva(" 2 - Português  5 - Química  8 - Filosofia   11 - História\n")
						escreva(" 3 - Inglês     6 - Fisíca   9 - Geografia   12 - Educação Física\n")

						escreva("Se deseja voltar ao menu, apenas digite qualquer numero acima de 12!")

						 leia(opcao)
						 escolha(opcao)
						 {
						  	caso 1:
						  	{
						  		cadastrarNotas()
						  		mat = media
						  		inicio()
						  		pare
						  	}
							  	caso 2:
							  	{
							  		cadastrarNotas()
							  		port = media					  		
							  		inicio()
							  		pare
							  	}
								  	caso 3:
								  	{
								  		cadastrarNotas()
								  		ing = media
								  		inicio()
								  		pare
								  	}
									  	caso 4:
									  	{
									  		cadastrarNotas()
									  		bio = media
									  		inicio()
									  		pare
									  	}
										  	caso 5:
										  	{
										  		cadastrarNotas()
										  		qui = media
										  		inicio()
										  		pare
										  	}
											  	caso 6:
											  	
											  	{
											  		cadastrarNotas()
											  		fis = media
											  		inicio()
											  		pare
											  	}
												  	caso 7:
												  	{
												  		cadastrarNotas()
												  		socio = media
												  		inicio()
												  		pare
												  	}
													  	caso 8:
													  	{
													  		cadastrarNotas()
													  		filo = media
													  		inicio()
													  		pare
													  	}
														  	caso 9:
														  	{
														  		cadastrarNotas()
														  		geo = media
														  		inicio()
														  		pare
														  	}
															  	caso 10:
															  	{
															  		cadastrarNotas()
															  		art = media
															  		inicio()
															  		pare
															  	}
																  	caso 11:
																  	{
																  		cadastrarNotas()
																  		hist = media
																  		inicio()
																  		pare
																  	}
																	  	caso 12:
																	  	{
																	  		cadastrarNotas()
																	  		edf = media
																	  		inicio()
																	  		pare
																	  	}  
						 caso contrario:
						 {
						 	inicio()
						 }
																	  	
						 }
						 pare

					
					}

						caso 2:
						{
							limpa()
							listarMedias()
							pare
							}
							caso 3:
							{
								sair()
								pare
							}
						caso contrario:
						{
							inicio()
							pare
						}
				}
	     
		
	}
	funcao cadastrarNotas()//Função para cadastrar notas
	
	{
		limpa()
		escreva("Quantas notas gostarias de cadastrar? [MAX: 10] ")
		
			leia(qntd_nota)
				se(qntd_nota > 10 ou qntd_nota < 0)
				{
					limpa()
					escreva("ERRO! Tente novamente!")
					Util.aguarde(2500)
					inicio()
				}
			limpa()
			

				para(n = ponteiro; n < qntd_nota; n++)
				{
			
				escreva("Escreva suas notas [", ponteiro+1, "/", qntd_nota,"]") 
				leia(nota[ponteiro]) //Atribui uma nota a um indice livre indicado pelo ponteiro

					limpa()
				 	se((nota[ponteiro] < 0) ou (nota[ponteiro] > 10))
				 	{
				 		escreva("ATENÇÂO! NOTA INVÁLIDA, TENTE NOVAMENTE")
				 		limparVetorNota()
				 		Util.aguarde(1250)
				 		inicio()
				 	}
		
				ponteiro++//Move o ponteiro de local no indice, para assim poder cadastrar outra nota
				soma += nota[n]//Soma tudo dentro do vetor
				limpa() 
				}

		
			media = soma / qntd_nota
			media = Matematica.arredondar(media, 1)
	
			escreva("CARREGANDO")
			Util.aguarde(1023)
			limpa()
	
			escreva("A sua média é ", media, "!")


				limparVetorNota()
				
	}
	funcao limparVetorNota() 
	{
				ponteiro = 0
				
				ponteiro = 0
				soma = 0.0
				
	}
	funcao listarMedias()
	{
		  	 escreva("==================================================================================\n")
			 escreva("                             Listagem de medias inseridas\n")
			 escreva("==================================================================================\n")

	 		 escreva(" Matemática = ", mat," |  Biologia = ", bio," |  Sociologia = ", socio ,"  |  Artes = ", art ,"\n")
			 escreva(" Português = ", port,"  |  Química = ", qui,"  |  Filosofia = ", filo,"   |  História = ", hist,"\n")
			 escreva(" Inglês = ", ing,"     |  Fisíca = ", fis,"   |  Geografia = ", geo,"   |  Educação Física = ", edf,"\n")
			 escreva("==================================================================================\n")
			 escreva("DESEJA VOLTAR AO MENU? (S/N)")

			  	leia(confirmar)

			  		escolha(confirmar)
			  		{
			  			caso 's':
			  			{
			  				inicio()
			  				pare
			  			}
			  			caso 'S':
			  			{
			  				inicio()
			  				pare
			  			}
			  			caso contrario:
			  			{
			  				limpa()
			  				listarMedias()
			  				pare
			  			}
			  		}

	}
	funcao sair()
	{
		          		     	    limpa()
	     	    escreva("Finalizando o programa em 03 segundos. . . ")
	     	     Util.aguarde(1000)
	     	    limpa()
	     	    escreva("Finalizando o programa em 02 segundos. . . ")
	     	     Util.aguarde(1000)
	     	    limpa()
	     	    escreva("Finalizando o programa em 01 segundo. . . ")
	     	      Util.aguarde(1000)
	     	    limpa()
	     	    escreva("\nPrograma Finalizado\n")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 105; 
 * @DOBRAMENTO-CODIGO = [250];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {nota, 7, 71, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */