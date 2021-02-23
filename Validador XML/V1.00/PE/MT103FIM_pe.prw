#include 'totvs.ch'

/*/{Protheus.doc} MT103FIM

Ponto de entrada na operação após a gravação da Nota Fiscal de Entrada

@type function
@author Carlos Eduardo Niemeyer Rodrigues
@since 29/01/2021

@see Validador de XML SEVEN - produtosSeven.u_PEValidadorXML()
/*/
User Function MT103FIM()

	//Salva a Chave de Acesso da NFe/Cte e o Vínculo das NF de Frete aos Documentos Vinculados do CTe 
	If ( FindFunction("produtosSeven.u_PEValidadorXML") ) 
		produtosSeven.u_PEValidadorXML()
	Endif	
	
Return
