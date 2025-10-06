initialization
addCalcMorphWith: aString to: aMorph at: yPosition

	| calcmorph |
	calcmorph := (TextMorph new contents: aString) lock.
	aMorph addMorph: calcmorph.
	calcmorph position: ((aMorph position x)+(aMorph width)+5 px)@yPosition.