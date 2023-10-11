programa
{
	inclua biblioteca Tipos -->ti
	inclua biblioteca Texto -->t


	const cadeia alfabeto[26] = {"A","B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P","Q", "R", "S", "T", "U", "V", "W","X", "Y", "Z"}
	funcao inicio()
{	
	cadeia d
	inteiro c
	inteiro x
		escreva("Descriptografar(com chave) ou cripitogafar ou descriptografar se chave?(1 ou 2 ou 3 respectivamente)\n")
		leia(x)
		limpa()

		se(x == 1){
			escreva("O que deseja descriptografar?(escerva em letras maiusculas e sem acentos)\n ")
				leia(d)
				limpa()
				escreva("Qual o numero chave?\n ") 
				leia(c)
				limpa()
				
				descriptografar( d, c)
		}

		senao se(x == 2){
			escreva("O que deseja criptografar?(escerva em letras maiusculas e sem acentos)\n")
			leia(d)
				limpa()
				escreva("Qual o numero chave?\n ") 
				leia(c)
				limpa()
				
				criptografar( d, c)
		}
		
		senao se(x == 3){
			escreva("O que deseja descriptografar?(escerva em letras maiusculas e sem acentos)\n")
			leia(d)
				limpa()
				
				
				possibilidades(d)
		}
	
	}
	funcao criptografar(cadeia texto,inteiro chave){
		
		
		cadeia letra = " "
		caracter letra_caracter = ' '
		inteiro posicao
		inteiro numero_letras_frase
		logico esta_no_alfabeto
		
		numero_letras_frase = t.numero_caracteres(texto)

		para(inteiro h=0; h < numero_letras_frase; h++){

			esta_no_alfabeto = falso
			
			letra_caracter = t.obter_caracter(texto, h)

			letra = ti.caracter_para_cadeia(letra_caracter)
			
			para(inteiro i=0; i < 26; i++){
				
				se(letra == alfabeto[i]){
					
					posicao = i + chave
					posicao = posicao % 26
					
					escreva(alfabeto[posicao])
					esta_no_alfabeto = verdadeiro
					pare
				}
		}
		se(esta_no_alfabeto == falso){
		escreva(letra)
		}
				
		}
		
	} //FIM DA CP






		
		funcao descriptografar(cadeia texto, inteiro chave){
		cadeia letra = " "
		caracter letra_caracter = ' '
		inteiro posicao
		inteiro numero_letras_frase
		logico esta_no_alfabeto
		
		numero_letras_frase = t.numero_caracteres(texto)

		para(inteiro h=0; h < numero_letras_frase; h++){

			esta_no_alfabeto = falso
			
			letra_caracter = t.obter_caracter(texto, h)

			letra = ti.caracter_para_cadeia(letra_caracter)
			
			para(inteiro i=0; i < 26; i++){
				
				se(letra == alfabeto[i]){
					
					posicao = i - chave

					se(posicao < 0){
						posicao = posicao + 26
					}
					
					
					escreva(alfabeto[posicao])
					esta_no_alfabeto = verdadeiro
					pare
				}
		}
		se(esta_no_alfabeto == falso){
		escreva(letra)
		}
				
		}
		
		}
//
		funcao possibilidades(cadeia texto){


		para(inteiro j = 1; j <= 26; j++){
		
			cadeia letra = " "
		caracter letra_caracter = ' '
		inteiro posicao
		inteiro numero_letras_frase
		logico esta_no_alfabeto
		
		
		numero_letras_frase = t.numero_caracteres(texto)

		para(inteiro h=0; h < numero_letras_frase; h++){

				esta_no_alfabeto = falso
				letra_caracter = t.obter_caracter(texto, h)

			letra = ti.caracter_para_cadeia(letra_caracter)
			
			para(inteiro i=0; i < 26; i++){
				
				se(letra == alfabeto[i]){

					
					posicao = i - j

					se(posicao < 0){
						posicao = posicao + 26
					
					}
					
					
					escreva(alfabeto[posicao], "\n")
					esta_no_alfabeto = verdadeiro
					pare
				
		}
		se(esta_no_alfabeto == falso){
		escreva(letra)
		}
				
		}
			
		}
		}

		
	

			
			
		}
}

 
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3340; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */