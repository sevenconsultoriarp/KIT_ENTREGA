#include 'totvs.ch'
 
/*/{Protheus.doc} MT100TOK

Ponto de entrada na função A103Tudok() para validação do inclusão da pré-nota/classificação do documento de Entrada
Esse ponto de entrada pertence ao MATA103X (funções de validação e controle de interface do documento de entrada).

@type function
@author Carlos Eduardo Niemeyer Rodrigues
@since 29/01/2021

@see Validador de XML SEVEN - produtosSeven.u_PEValidadorXML()

@obs
	Contexto:
	
	If (ExistBlock("MT100TOK"))
		lPE := ExecBlock("MT100TOK",.F.,.F.,{lRet})
		If ValType(lPE) = "L"
			If ! lPE
				lRet := .F. // Corrigido p/ nao alterar o lRet, se .F., novamente p/ .T.
			EndIf
		EndIf
	EndIf  
/*/
User Function MT100TOK()
	Local lRet := PARAMIXB[01]
	
	//Validação do XML da NF de Entrada de Terceiros durante a Inclusão e a Classificação da Nota
	//NOTA IMPORTANTE: Sugere que sua execução seja a última no PE
	If ( lRet .And. FindFunction("produtosSeven.u_PEValidadorXML") ) 
		lRet := produtosSeven.u_PEValidadorXML()
	Endif

Return lRet
