initialization
addResultMorphWith: aString to: aMorph at: yPosition

	| resultmorph |
	resultmorph := (TextMorph new contents: aString) lock.
	aMorph addMorph: resultmorph.
	resultmorph position: ((aMorph position x)+5 px)@yPosition.