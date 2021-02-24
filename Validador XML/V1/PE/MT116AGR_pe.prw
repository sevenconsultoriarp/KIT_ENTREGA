#include 'totvs.ch'

/*/{Protheus.doc} MT116AGR

Ponto de entrada após gravação da NF de Conhecimento de Frete

@type function
@author Carlos Eduardo Niemeyer Rodrigues
@since 29/01/2021

@see Validador de XML SEVEN - produtosSeven.u_PEValidadorXML()

@obs
	Contexto:
	
	Begin Transaction
		a103Grava(l116Exclui,lGeraLanc,lDigita,lAglutina,aHeadSE2,aColsSE2,aHeadSEV,aColsSEV,@nRecSF1,aRecSD1,aRecSE2,aRecSF3,aRecSC5,aHeadSDE,aColsSDE,aRecSDE,.T.,.F.,@aRecSF1Ori,aRatVei,aRatFro,Nil,Nil,Nil,Nil,Nil,Nil,Nil,nIndexSE2,Nil,Nil,Nil,Nil,Nil,Nil,Nil,Nil,Nil,cRecIss)				
		A116Grava(l116Exclui,nRecSF1,aRecSF1Ori,aRecSF8,aAmarrAFN)
	End Transaction        

	//Apaga o arquivo da Indregua
	#IFNDEF TOP				
		RetIndex( "SE2" )  
		FErase( cIndex+OrdBagExt() ) 
	#ENDIF		

	If !InTransact()
		SF1->(dbSetOrder(1))
		Eval(bFiltraBrw)			
	Endif	
	
	If ExistBlock("MT116AGR")
		ExecBlock("MT116AGR",.F.,.F.)
	EndIf
/*/
User Function MT116AGR()

	//Salva a Chave de Acesso da NFe/Cte do Conhecimento de Transporte (Validador do XML) e o Vínculo das NF de Frete aos Documentos Vinculados do CTe
	If ( FindFunction("produtosSeven.u_PEValidadorXML") ) 
		produtosSeven.u_PEValidadorXML()
	Endif	
	
Return
