#INCLUDE "TOTVS.CH"

/*/{Protheus.doc} MTA094RO

Ponto de Entrada na rotina de Liberação de Documentos
	
@type function
@author	Carlos Eduardo Niemeyer Rodrigues
@since 16/02/2021
@version P11,P12
@database MSSQL,Oracle

@obs
	If ExistBlock("MTA094RO")
		If ValType(aAcoes := ExecBlock( "MTA094RO", .F., .F., {aRotina}) ) == "A"
			aRotina:= aAcoes
		EndIf
	EndIf
	
@see MATA094
/*/
User Function MTA094RO()
	Local aRotina := PARAMIXB[1]

	//Adiciona a Central de Processos SEVEN no Menu de Liberação de Documentos
	If ( FindFunction("libSeven.u_addMenuCentralProcess") )
		libSeven.u_addMenuCentralProcess(@aRotina,FunName(),,,.F.)
	Endif
 
Return aRotina
