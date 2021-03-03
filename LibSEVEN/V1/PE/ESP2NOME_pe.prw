#include "totvs.ch"
#include "7VGeneral.ch"
#include "7VProdutosSeven.ch"

/*/{Protheus.doc} ESP2NOME
                             
Rotina genérica para Definir Nome do Módulo Específico 99 - SIGAESP2

@type function
@author Carlos Eduardo Niemeyer Rodrigues
@since 06/02/2021
@version V11,V12
@database MSSQL,Oracle

@see https://tdn.totvs.com/display/public/PROT/ESPNOME+-+Ponto+de+Entrada
/*/
User Function ESP2NOME()
	Local cNomeMod := ""
    
	cNomeMod := "Específicos Produtos " + MARCA_SEVEN
	
Return cNomeMod
