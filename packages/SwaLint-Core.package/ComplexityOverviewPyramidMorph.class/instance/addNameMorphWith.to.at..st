initialization
addNameMorphWith: aString to: aMorph at: yPosition

	| namemorph |
	namemorph := (TextMorph new contents: aString) lock.
	aMorph addMorph: namemorph.
	namemorph position: ((aMorph position x)+5 px)@yPosition.