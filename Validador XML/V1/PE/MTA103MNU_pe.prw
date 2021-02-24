#include 'totvs.ch'

/*/{Protheus.doc} MTA103MNU

Ponto de entrada para incluir Itens no Menu da Rotina de Documento de Entrada

@type function
@author Carlos Eduardo Niemeyer Rodrigues
@since 29/01/2021

@see Validador de XML SEVEN - produtosSeven.u_PEValidadorXML()

@obs
	Contexto:
	
	//Ponto de entrada utilizado para inserir novas opcoes no array aRotina
	If ExistBlock("MTA103MNU")
		ExecBlock("MTA103MNU",.F.,.F.)
	EndIf
/*/
User Function MTA103MNU()
    
	//Adiciona no Menu do Documento de Entrada a Rotina de Validação do XML
	If ( FindFunction("produtosSeven.u_PEValidadorXML") ) 
		produtosSeven.u_PEValidadorXML()
	Endif
	
Return
