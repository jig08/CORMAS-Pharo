images - bitmap
z_nb4Image
	"Tools.UIMaskEditor new openOnClass: self andSelector: #z_nb4"
	
	<resource: #image>
	^Image
		extent: 50 @ 51
		depth: 2
		bitsPerPixel: 2
		palette:
			(MappedPalette
				withColors:
					(#(#(ColorValue 
						#scaledRed:scaledGreen:scaledBlue: #(0 0 0)) #(ColorValue 
						#scaledRed:scaledGreen:scaledBlue: #(8191 8191 8191)) #(ColorValue 
						#scaledRed:scaledGreen:scaledBlue: #(5653 3115 8191)))
						collect:
							[:each | 
							(each at: 1) value
								perform: (each at: 2)
								withArguments: (each at: 3)]))
		usingBits:
			(ByteArray fromPackedString:
					'UUUUUUUUUUUUUUUUT@@@@EUUUUUUUUUUUUUUUU@@@@AUUUUUUUUUTEUUUUUP@@@@UUUUUUUUUUHUUUUUT@@@@EUUUUUUUUUJEUUUUU@@@@AUUUUUUUUURAUUUUUP@@@@UUUUUUUUUR UUUUUT@@@@EUUUUUUUUT EUUUUU@@@@AUUUUUUUUT(AUUUUUP@@@@UUUUUUUUUJHUUUUUT@@@@EUUUUUUUUJBEUUUUU@@@@AUUUUUUUUR !UUUUUP@@@@UUUUUUUUR(HUUUUUT@@@@EUUUUUUUT(REUUUUU@@@@AUUUUUUUUJD!UUUUUP@@@@UUUUUUUUJEHUUUUUT@@@@EUUUUUUUR!REUUUUU@@@@AUUUUUUUR(T!UUUUUP@@@@UUUUUUUT(UHUUUUUT@@@@EUUUUUUT*EREUUUUU@@@@AUUUUUUUJET!UUUUUP@@@@UUUUUUUJ!UHUUUUUT@@@@EUUUUUUR(UREUUUUU@@@@AUUUUUUR(UT!UUUUUP@@@@UUUUUUT*EUHUUUUUT@@@@EUUUUUT*EUREUUUUU@@@@AUUUUUUJ!UT!UUUUUP@@@@UUUUUUR(UUHUUUUUT@@@@EUUUUUR(UUREUUUUU@@@@AUUUUUT*EUT!UUUUUP@@@@UUUUUT*!UUHUUUUUT@@@@EUUUUUJ!UUREUUUUU@@@@AUUUUUJ(UUT!UUUUUP@@@@UUUUUR(UUUHUUUUUT@@@@EUUUUR*@@@B@EUUUU@@@@AUUUUT******!UUUUP@@@@UUUUT******(UUUUT@@@@EUUUU@@@@@B@EUUUU@@@@AUUUUUUUUUT!UUUUUP@@@@UUUUUUUUUUHUUUUUT@@@@EUUUUUUUUUREUUUUU@@@@AUUUUUUUUUT!UUUUUP@@@@UUUUUUUUUUHUUUUUT@@@@EUUUUUUUUUREUUUUU@@@@AUUUUUUUUUT!UUUUUP@@@@UUUUUUUUUUHUUUUUT@@@@EUUUUUUUUUREUUUUU@@@@AUUUUUUUUUT!UUUUUP@@@@UUUUUUUUUUHUUUUUT@@@@EUUUUUUUUUPEUUUUU@@@@AUUUUUUUUUUUUUUUUP@@@@')