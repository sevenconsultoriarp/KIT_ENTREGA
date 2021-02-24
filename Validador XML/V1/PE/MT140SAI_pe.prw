#include 'totvs.ch'

/*/{Protheus.doc} MT140SAI

Ponto de entrada disparado antes do retorno da rotina ao browse

@type function
@author Carlos Eduardo Niemeyer Rodrigues
@since 29/01/2021

@see Validador de XML SEVEN - produtosSeven.u_PEValidadorXML()

@obs
	Contexto:
	
	//O ponto de entrada e disparado apos o RestArea pois pode ser utilizado para posicionar o Browse
	If ExistBlock( "MT140SAI" )
		ExecBlock( "MT140SAI", .F., .F., { aRotina[ nOpcx, 4 ], cNFiscal, cSerie, cA100For, cLoja, cTipo, nOpcA } )
	EndIf
/*/
User Function MT140SAI()

	//Salva a Chave de Acesso da NFe/Cte e o Vinculo das NF de Frete aos Documentos Vinculados do CTe
	If ( FindFunction("produtosSeven.u_PEValidadorXML") ) 
		produtosSeven.u_PEValidadorXML()
	Endif		
	
Return
