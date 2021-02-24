#include "totvs.ch"

/*/{Protheus.doc} MT140TOK

Ponto de entrada na fun��o A140Tudok() para valida��o do inclus�o da pr�-nota do Documento de Entrada

@type function
@author Carlos Eduardo Niemeyer Rodrigues
@since 29/01/2021

@see Validador de XML SEVEN - produtosSeven.u_PEValidadorXML()

@obs
	Contexto:
	
	//Chamada do Ponto de entrada para validacao da TudoOk
	If lRetorno .And. ExistBlock("MT140TOK")
		lRetorno := ExecBlock("MT140TOK",.F.,.F.,{lRetorno})
	EndIf
/*/
User Function MT140TOK()
	Local lRet := PARAMIXB[01]
	
	//Valida��o do XML da Nota do Documento de Entrada Recebida
	//durante a Inclus�o da Pr�-Nota	
	If lRet .And. FindFunction("u_PEValidadorXML")
		lRet := produtosSeven.u_PEValidadorXML()		
	Endif

Return lRet
