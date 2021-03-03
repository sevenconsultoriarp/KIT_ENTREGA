#include "totvs.ch"
#include "7VGeneral.ch"
#include "7VProdutosSeven.ch"

/*/{Protheus.doc} ESPNOME
                             
Rotina gen�rica para Definir Nome do M�dulo Espec�fico 97 - SIGAESP

@type function
@author Carlos Eduardo Niemeyer Rodrigues
@since 06/02/2021
@version V11,V12
@database MSSQL,Oracle

@see https://tdn.totvs.com/display/public/PROT/ESPNOME+-+Ponto+de+Entrada
/*/
User Function ESPNOME()
	Local cNomeMod := ""
    
	cNomeMod := "Espec�ficos Clientes - " + MARCA_SEVEN
	
Return cNomeMod
