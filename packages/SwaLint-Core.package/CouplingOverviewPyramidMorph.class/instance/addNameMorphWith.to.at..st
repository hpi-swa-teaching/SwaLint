initialization
addNameMorphWith: aString to: aMorph at: yPosition

	| namemorph |
	namemorph := (TextMorph new contents: aString).
	aMorph addMorph: namemorph.
	namemorph position: ((aMorph position x)+(aMorph width)-(namemorph  width)-5)@yPosition.