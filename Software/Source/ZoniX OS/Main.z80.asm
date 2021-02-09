;-------------------------------------------------
;ZoniX Main
;
;-------------------------------------------------
; $0000 - $0100 : ROM
; $8000 - $83FF : RAM
;
; $00 - $01 : 8251 UART

; Code from Dominic Emond-Belanger

.target "Z80"

; Comma separated 0xAA format for arduino code.
	.setting "OutputFileType", "TXT"
	.setting "OutputTxtAddressFormatFirst", " "
	.setting "OutputTxtAddressFormatNext", " "
	.setting "OutputTxtValueFormat", "0x{0:X02}"
	.setting "OutputTxtValueSeparator", ","
	.setting "OutputTxtLineSeparator", ",\n\r"




    .ORG $0000

	LD SP,$83FF  ; STACK AT THE END OF 8K RAM
	IM 1
	.end