SetCompressor /SOLID lzma
SetCompressorDictSize 128
Name "Supermium"
OutFile "SupermiumSetup-x64.exe"
!include x64.nsh
InstallDir "$PROGRAMFILES\Supermium"

Function Install64Bit
    SetOutPath "$INSTDIR\"
	CreateDirectory "$INSTDIR\122.0.6261.85"
	CreateDirectory "$INSTDIR\122.0.6261.85\Extentions"
	CreateDirectory "$INSTDIR\122.0.6261.85\Locales"
	CreateDirectory "$INSTDIR\122.0.6261.85\MEIPreload"
	CreateDirectory "$INSTDIR\122.0.6261.85\VisualElements"
	File /r "x64\*"
	
	CreateShortCut "$DESKTOP\Common\Supermium.lnk" "$INSTDIR\chrome.exe"
	CreateShortCut "$DESKTOP\Supermium.lnk" "$INSTDIR\chrome.exe"
	
	CreateDirectory "$SMPROGRAMS\Supermium"
	CreateShortCut "$SMPROGRAMS\Supermium\Supermium.lnk" "$INSTDIR\chrome.exe" "" "$INSTDIR\icon.ico"
	Quit
FunctionEnd

Section
${If} ${RunningX64}
	DetailPrint "64-bit Windows"
	Call Install64Bit
${Else}
	DetailPrint "32-bit Windows - Not Supported"
${EndIf}
SectionEnd

Function .onInit
FunctionEnd

Function .onInstSuccess
FunctionEnd

Function .onInstFailed
FunctionEnd
