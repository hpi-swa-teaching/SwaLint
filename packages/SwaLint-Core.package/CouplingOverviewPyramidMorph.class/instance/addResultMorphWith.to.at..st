initialization
addResultMorphWith: aString to: aMorph at: yPosition

	| resultmorph |
	resultmorph := (TextMorph new contents: aString).
	aMorph addMorph: resultmorph.
	resultmorph position: ((aMorph position x)+5)@yPosition.