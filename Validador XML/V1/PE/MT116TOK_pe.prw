#include "totvs.ch"

/*/{Protheus.doc} MT116TOK

Ponto de entrada na Validação Tudo OK da Rotina de Inclusão de NF de Conhecimento de Transporte

@type function
@author Carlos Eduardo Niemeyer Rodrigues
@since 29/01/2021

@see Validador de XML SEVEN - produtosSeven.u_PEValidadorXML()

@obs
	Contexto:

	//Ponto de Entrada Padrao
	If lRet .And. (ExistBlock("MT116TOK"))
		lRet := ExecBlock("MT116TOK",.F.,.F.)
		If ValType(lRet) <> "L"
			lRet := .T.
		EndIf
	EndIf
/*/
User Function MT116TOK()
	Local lRet := .T.
	
	//Executa a Validação do XML da NF de Conhecimento de Transporte
	If ( lRet .And. FindFunction("produtosSeven.u_PEValidadorXML") ) 
		lRet := produtosSeven.u_PEValidadorXML()
	Endif	

Return lRet
