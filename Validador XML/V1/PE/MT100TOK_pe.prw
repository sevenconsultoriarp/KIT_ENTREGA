#include 'totvs.ch'
 
/*/{Protheus.doc} MT100TOK

Ponto de entrada na fun��o A103Tudok() para valida��o do inclus�o da pr�-nota/classifica��o do documento de Entrada
Esse ponto de entrada pertence ao MATA103X (fun��es de valida��o e controle de interface do documento de entrada).

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
	
	//Valida��o do XML da NF de Entrada de Terceiros durante a Inclus�o e a Classifica��o da Nota
	//NOTA IMPORTANTE: Sugere que sua execu��o seja a �ltima no PE
	If ( lRet .And. FindFunction("produtosSeven.u_PEValidadorXML") ) 
		lRet := produtosSeven.u_PEValidadorXML()
	Endif

Return lRet
