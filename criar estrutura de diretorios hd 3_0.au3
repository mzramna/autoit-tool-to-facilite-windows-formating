#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <File.au3>
#include <GuiListBox.au3>
#include <MsgBoxConstants.au3>

$Consultor = ""
$Empresa=""
$Usuario=""
$MDAY=""
$MON=""
$YEAR=""
$Media = ""
func create_backup_folder_structure()
$userinfo=GUICreate("insira as informações do backup",200,130)
$Consultorgui = GUICtrlCreateInput("Consultor",0,0)
$Empresagui=GUICtrlCreateInput("Empresa",0,20)
$Usuariogui=GUICtrlCreateInput(@UserName,0,40)
$MDAYgui=GUICtrlCreateInput(@MDAY,0,60,20)
$MONgui=GUICtrlCreateInput(@MON,20,60,20)
$YEARgui=GUICtrlCreateInput(@YEAR,40,60,40)
$Mediagui =GUICtrlCreateInput("Media Usada",0,80,200)
$GO=GUICtrlCreateButton ("iniciar backup",0,100)
GUISetState(@SW_SHOW,$userinfo)
While 1
   Switch GUIGetMsg()
	  Case $GO
		 $Consultor = GUICtrlRead ($Consultorgui)
		 $Empresa=GUICtrlRead ($Empresagui)
		 $Usuario=GUICtrlRead ($Usuariogui)
		 $MDAY=GUICtrlRead ($MDAYgui)
		 $MON=GUICtrlRead ($MONgui)
		 $YEAR=GUICtrlRead ($YEARgui)
		 $Media = GUICtrlRead ($Mediagui)
		 ExitLoop
	  Case $GUI_EVENT_CLOSE
		 ExitLoop
   EndSwitch
WEnd
If not FileExists(@ScriptDir&"\"&$YEAR) then
   DirCreate(@ScriptDir&"\"&$YEAR)
endif
If not FileExists(@ScriptDir&"\"&$YEAR&"\"&$MON) then
   DirCreate(@ScriptDir&"\"&$YEAR&"\"&$MON)
endif
If not FileExists(@ScriptDir&"\"&$YEAR&"\"&$MON&"\"&$MDAY&"-BKP-"&$Empresa&"("&$Usuario&")") then
   DirCreate(@ScriptDir&"\"&$YEAR&"\"&$MON&"\"&$MDAY&"-BKP-"&$Empresa&"("&$Usuario&")")
endif
If not FileExists(@ScriptDir&"\"&$YEAR&"\"&$MON&"\"&$MDAY&"-BKP-"&$Empresa&"("&$Usuario&")"&"\C") then
   DirCreate(@ScriptDir&"\"&$YEAR&"\"&$MON&"\"&$MDAY&"-BKP-"&$Empresa&"("&$Usuario&")"&"\C")
endif
If not FileExists(@ScriptDir&"\"&$YEAR&"\"&$MON&"\"&$MDAY&"-BKP-"&$Empresa&"("&$Usuario&")"&"\D") then
   DirCreate(@ScriptDir&"\"&$YEAR&"\"&$MON&"\"&$MDAY&"-BKP-"&$Empresa&"("&$Usuario&")"&"\D")
endif
If not FileExists(@ScriptDir&"\"&$YEAR&"\"&$MON&"\"&$MDAY&"-BKP-"&$Empresa&"("&$Usuario&")"&"\Usuario") then
   DirCreate(@ScriptDir&"\"&$YEAR&"\"&$MON&"\"&$MDAY&"-BKP-"&$Empresa&"("&$Usuario&")"&"\Usuario")
endif
If not FileExists(@ScriptDir&"\"&$YEAR&"\"&$MON&"\"&$MDAY&"-BKP-"&$Empresa&"("&$Usuario&")"&"\Email") then
   DirCreate(@ScriptDir&"\"&$YEAR&"\"&$MON&"\"&$MDAY&"-BKP-"&$Empresa&"("&$Usuario&")"&"\Email")
endif
If not FileExists(@ScriptDir&"\"&$YEAR&"\"&$MON&"\"&$MDAY&"-BKP-"&$Empresa&"("&$Usuario&")"&"\Configs") then
   DirCreate(@ScriptDir&"\"&$YEAR&"\"&$MON&"\"&$MDAY&"-BKP-"&$Empresa&"("&$Usuario&")"&"\Configs")
endif
if not FileExists(@ScriptDir&"\"&$YEAR&"\"&$MON&"\"&$MDAY&"-BKP-"&$Empresa&"("&$Usuario&")"&"\Configs\automatico") Then
   DirCreate(@ScriptDir&"\"&$YEAR&"\"&$MON&"\"&$MDAY&"-BKP-"&$Empresa&"("&$Usuario&")"&"\Configs\automatico")
EndIf
If not FileExists(@ScriptDir&"\"&$YEAR&"\"&$MON&"\"&$MDAY&"-BKP-"&$Empresa&"("&$Usuario&")"&"\Certificado Digital") then
   DirCreate(@ScriptDir&"\"&$YEAR&"\"&$MON&"\"&$MDAY&"-BKP-"&$Empresa&"("&$Usuario&")"&"\Cetificado Digital")
endif
If not FileExists(@ScriptDir&"\"&$YEAR&"\"&$MON&"\"&$MDAY&"-BKP-"&$Empresa&"("&$Usuario&")"&"\C\Arquivos de Programas") then
   DirCreate(@ScriptDir&"\"&$YEAR&"\"&$MON&"\"&$MDAY&"-BKP-"&$Empresa&"("&$Usuario&")"&"\C\Arquivos de Programas")
endif
If not FileExists(@ScriptDir&"\"&$YEAR&"\"&$MON&"\"&$MDAY&"-BKP-"&$Empresa&"("&$Usuario&")"&"\C\Arquivos de Programas (x86)") then
   DirCreate(@ScriptDir&"\"&$YEAR&"\"&$MON&"\"&$MDAY&"-BKP-"&$Empresa&"("&$Usuario&")"&"\C\Arquivos de Programas (x86)")
endif
If not FileExists(@ScriptDir&"\"&$YEAR&"\"&$MON&"\"&$MDAY&"-BKP-"&$Empresa&"("&$Usuario&")"&"\C\ProgramData") then
   DirCreate(@ScriptDir&"\"&$YEAR&"\"&$MON&"\"&$MDAY&"-BKP-"&$Empresa&"("&$Usuario&")"&"\C\ProgramData")
endif
If not FileExists(@ScriptDir&"\"&$YEAR&"\"&$MON&"\"&$MDAY&"-BKP-"&$Empresa&"("&$Usuario&")\consultor-responsavel-"&$Consultor) then
   _FileCreate(@ScriptDir&"\"&$YEAR&"\"&$MON&"\"&$MDAY&"-BKP-"&$Empresa&"("&$Usuario&")\consultor-responsavel-"&$Consultor)
endif
If not FileExists(@ScriptDir&"\"&$YEAR&"\"&$MON&"\"&$MDAY&"-BKP-"&$Empresa&"("&$Usuario&")\midia-backup-utilizada-"&$Media) then
   _FileCreate(@ScriptDir&"\"&$YEAR&"\"&$MON&"\"&$MDAY&"-BKP-"&$Empresa&"("&$Usuario&")\midia-backup-utilizada-"&$Media)
endif
EndFunc

;func select_aplications_to_backup()
;   $Program_Files=GUICreate("selecione as aplicações para fazer backup",)
;   $Program_Files_x86=GUICreate("selecione as aplicações x86 para fazer backup")
;EndFunc

func copy_userdata()
   ;  @ScriptDir&"\"&$YEAR&"\"&$MON&"\"&$MDAY&"-BKP-"&$Empresa&"("&$Usuario&")"&"\Usuario"

EndFunc

; *** Start added by AutoIt3Wrapper ***
#include <MsgBoxConstants.au3>
; *** End added by AutoIt3Wrapper ***
#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Outfile=prints a partir de csv sem teclado.exe
#AutoIt3Wrapper_Compression=4
#AutoIt3Wrapper_UseX64=n
#AutoIt3Wrapper_Add_Constants=n
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#region --- Au3Recorder generated code Start (v3.3.9.5 KeyboardLayout=00000416)  ---
#include <ScreenCapture.au3>
#include <file.au3>
#include <Array.au3>
#include <String.au3>

#region --- Internal functions Au3Recorder Start ---

Func _Au3RecordSetup()
Opt('WinWaitDelay',100)
Opt('WinDetectHiddenText',1)
Opt('MouseCoordMode',0)
EndFunc

Func _WinWaitActivate($title,$text,$timeout=0)
	WinWait($title,$text,$timeout)
	If Not WinActive($title,$text) Then WinActivate($title,$text)
	WinWaitActive($title,$text,$timeout)
EndFunc

_AU3RecordSetup()

Func _DeleteEmptyRows($aArray)
    Local $Rows = Ubound($aArray,1)
    Local $Cols = Ubound($aArray,2)
    Local $aTemp[$Rows][$Cols]
    Local $not_empty
    Local $Count = 0

    ;Loop through rows
    For $Y = 0 to $Rows - 1
        $not_empty = 0

        ;Loop through columns
        For $X = 0 to $Cols - 1

            ;Copy all columns to temp array even if they are all empty
            $aTemp[$Count][$X] = $aArray[$Y][$X]

            ;If even one column contains data, make sure it doesn't get deleted
            If $aArray[$Y][$X] <> "" Then $not_empty = BitOr($not_empty, 1)
        Next

        ;If the row has any data, increment, else keep overwriting last row until it contains something
        If $not_empty Then $Count += 1
    Next

    Redim $aTemp[$Count][$Cols]
    Return $aTemp
EndFunc

#endregion --- Internal functions Au3Recorder End ---

func CSV_TO_ARRAY($CSV=@WorkingDir&"/prints.csv",$length=10)
   $csv = FileRead($CSV)
   $rows = StringSplit($csv, @CRLF)
   Dim $entries[$rows[0] +1][$length]
   $entries[0][0] = $rows[1]
   For $i = 1 to $rows[0]
	  $temp = StringSplit($rows[$i], ",", 2)
	  For $j = 0 to UBound($temp) - 1
		 $entries[$i][$j] = $temp[$j] ;
	  Next
   Next

   ;_ArrayDisplay($entries)
   Return $entries
EndFunc

func choose_action_from_array($diretorio_para_salvar,$array,$tempo_padrao=100,$take_print_from_desktop=1);o primeiro parametro determina se é um print ou a execução de um comando;se for COMANDO é um comando e PRINT é para prints
   If $take_print_from_desktop = 1 Then
	  TakePrint_from_desktop($diretorio_para_salvar,$tempo_padrao)
   EndIf
   ;pega o array e subdivide em 2 arrays a partitr do 1 item de cada linha
   $arraylength=Ubound($array)-1  ;
   dim $prints[$arraylength][9]
   $printtmp=0
   dim $comandos[$arraylength][5]
   $commandtmp=0
   $array2dimlength=Ubound($array,2)
   Dim $tmparray[$array2dimlength]
   For $i = 2 to $arraylength
	  ;_ArrayDisplay($tmparray, "tmparray")
	  if $array[$i][0]="COMANDO" then
		 For $j = 1 to $array2dimlength-1
			$tmparray[$j] = $array[$i][$j]
		 Next
		 $comandos[$commandtmp][0]=$tmparray[1]
		 $comandos[$commandtmp][1]=$tmparray[2]
		 $comandos[$commandtmp][2]=$tmparray[4]
		 $comandos[$commandtmp][3]=$tmparray[5]
		 $comandos[$commandtmp][4]=$tmparray[6]
		 ;_ArrayDisplay($comandos, "comandos")
		 $commandtmp+=1
	  ElseIf $array[$i][0]="PRINT" then
		 For $j = 1 to $array2dimlength-1
			$tmparray[$j] = $array[$i][$j]
         Next
		 For $g=0 to 8 step +1
			$prints[$printtmp][$g]=$tmparray[$g+1]
		 Next
		 ;_ArrayDisplay($prints, "prints")
		 $printtmp+=1
	  EndIf
   Next
   $prints=_DeleteEmptyRows($prints)
   $comandos=_DeleteEmptyRows($comandos)
   ;_ArrayDisplay($prints, "prints")
   ;_ArrayDisplay($comandos, "comandos")
   take_print_from_array($prints,$diretorio_para_salvar,$tempo_padrao)
   run_command_from_array($comandos,$diretorio_para_salvar)
EndFunc

func take_print_from_array($array,$diretorio_para_salvar,$tempo_padrao=100)
   ;_ArrayDisplay($array, "array")
   $arraylength=Ubound($array)-1
   Dim $tmparray[10]
   For $i = 0 to $arraylength
	  For $j = 0 to Ubound($array,2)-1
		 $tmparray[$j] = $array[$i][$j]
	  Next
	  ;_ArrayDisplay($tmparray, "tmparray")
	  if $tmparray[8]="" Then
		 $tmparray[8]=1
	  EndIf
	  print_generalizado($diretorio_para_salvar,$tmparray[0],$tmparray[1],  $tmparray[2],   $tmparray[3],       $tmparray[4],      $tmparray[5],   $tmparray[6],$tmparray[7],$tmparray[8]*$tempo_padrao)
	  ;                  $diretorio_para_salvar,$comando    ,$nome_do_print,$nome_da_janela,$diretorio_relativo,$reorganizar_itens,$file_extension,     $dimensao_X, $dimensao_Y,$sleep_padrao
   Next

EndFunc

func print_generalizado($diretorio_para_salvar,$comando, $nome_do_print,$nome_da_janela,$diretorio_relativo=0,$reorganizar_itens=False,$file_extension=".jpg",$dimensao_X=@DesktopWidth,$dimensao_Y=@DesktopHeight,$sleep_padrao=1)
   if $diretorio_relativo="" Then
	  $diretorio_relativo=0
   EndIf
   if $reorganizar_itens="" Then
	  $reorganizar_itens=False
   EndIf
   if $file_extension = "" Then
	  $file_extension=".jpg"
   EndIf
   If $sleep_padrao="" Then
	  $sleep_padrao=100
   EndIf
   if $diretorio_relativo=1 Then
	  Run(@WorkingDir&$comando)
   Else
	  Run($comando)
   EndIf
   _WinWaitActivate($nome_da_janela,"")
   Sleep($sleep_padrao)
   if $reorganizar_itens Then
	  For $loop=38 to 1 step -1
		 send("{ALTDOWN}{CTRLDOWN}{-}{CTRLUP}{ALTUP}")
		 Sleep($sleep_padrao/4)
	  Next
	  Sleep($sleep_padrao/4)
	  For $loop=5 to 0 step -1
		 Send("{ALTDOWN}{CTRLDOWN}={CTRLUP}{ALTUP}")
		 Sleep($sleep_padrao/4)
	  Next
   EndIf
   MouseMove(0,0,999)
   if $dimensao_X="" And $dimensao_Y="" then
	  WinSetState($nome_da_janela,"",@SW_MAXIMIZE)
   Else
	  if $dimensao_X="" Then
		 $dimensao_X=@DesktopWidth
	  EndIf
	  if $dimensao_Y="" Then
		 $dimensao_Y=@DesktopHeight
	  EndIf
	  WinMove($nome_da_janela,"",0,0,$dimensao_X,$dimensao_Y)
   EndIf
   sleep($sleep_padrao)
   $print=_ScreenCapture_CaptureWnd("",$nome_da_janela)
   _ScreenCapture_SaveImage($diretorio_para_salvar &"/"& $nome_do_print&$file_extension,$print)
   WinClose($nome_da_janela)
EndFunc

func run_command_from_array($array,$diretorio_para_salvar,$brutearray=0)
   $arraylength=Ubound($array)-1  ;
   Dim $tmparray[6]
   For $i = 0 to $arraylength
	  For $j = 0 to Ubound($array,2)-1
		 $tmparray[$j] = $array[$i][$j]
	  Next
	  ;_ArrayDisplay($tmparray, "tmparray")
	  comando_generalizado($diretorio_para_salvar,$tmparray[0],$tmparray[1],$tmparray[2],$tmparray[3],$tmparray[4])
   Next
EndFunc

func comando_generalizado($diretorio_para_salvar,$comando,$nome_do_output,$diretorio_relativo="",$comando_de_exportacao=">",$extensao=".txt")
   if $comando_de_exportacao="" Then
	  $comando_de_exportacao=">"
   EndIf

   If $extensao="" Then
	  $extensao=".txt"
   EndIf

   RunWait(@ComSpec & " /q /c " & $comando&" "&$comando_de_exportacao&" "&$diretorio_para_salvar&"\"&$nome_do_output&$extensao,@ScriptDir,@SW_HIDE)

EndFunc

func TakePrint_from_desktop($diretorio_para_salvar,$tempo_padrao=100,$filename="Desktop.png")
   MouseMove(0,0,999)
   WinMinimizeAll ( )
   Sleep($tempo_padrao)
   $desktop=_ScreenCapture_Capture($diretorio_para_salvar &"/"&$filename,0,0,@DesktopWidth,@DesktopHeight)
   ;_ScreenCapture_SaveImage($diretorio_para_salvar &"/"&$filename,$desktop)
EndFunc

#endregion --- Au3Recorder generated code End ---

;para printar os programas insira o padrão da função no arquivo csv localizado no mesmo diretório que o executável de logging de dados do usuário
;sendo que a primeira coluna define se é um PRINT ou um COMANDO
;se for um print o texto na primeira coluna deve ser "PRINT" tudo em letras maiúsculas
;os parametros devem ser colocados um por coluna para cada print
;um programa por linha
;os prints serão salvos tomporariamente no diretorio de execução do script
;o arquivo csv sera aberto dentro do diretorio onde os prints serão salvos
;
;para executar um comando o seguinte padrão deverá ser usado:
;se for um comando o texto na primeira coluna deve ser  "PRINT" tudo em letras maiúsculas
;os parametros devem ser colocados um por coluna para cada output de comando
;um programa por linha
;os comandos serão salvos tomporariamente no diretorio de execução do script
;o arquivo csv sera aberto dentro do diretorio onde os prints serão salvos

;o padrão base do csv é possuir o seguinte cabeçalho no diretorio:

create_backup_folder_structure()
$diretorio_para_prints=@ScriptDir&"\"&$YEAR&"\"&$MON&"\"&$MDAY&"-BKP-"&$Empresa&"("&$Usuario&")"&"\Configs\automatico\"
$repeat = 6

While $repeat = 6
   $repeat=0
   $tempo_padrao=InputBox("tempo","insira o tempo base para esse computador em milisegundos","100")
   choose_action_from_array($diretorio_para_prints,CSV_TO_ARRAY())
   MouseMove(@DesktopWidth / 2,@DesktopHeight / 2,9999)
   $repeat=MsgBox($MB_YESNO,"deseja repetir?","acha que os prints devem ser tirados novamente devido a algum erro já percebido?")
   if $repeat = 6 then
	  MsgBox($MB_OK,"erro detectado","insira novamente o tempo minimo e os prints serão retirados novamente",10)
   EndIf
WEnd
MsgBox($MB_OK,"prints terminados","os prints foram salvos na pasta "&$diretorio_para_prints&" verifique se todos os prints foram tirados corretamente,caso contrário execute o comando novamente com um tempo padão maior,a seguir será aberta a pasta com os prints automaticos",10)
Run("explorer.exe "&$diretorio_para_prints)
