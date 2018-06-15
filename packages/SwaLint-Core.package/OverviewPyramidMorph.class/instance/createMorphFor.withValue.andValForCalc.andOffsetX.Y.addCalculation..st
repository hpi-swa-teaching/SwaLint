initialization
createMorphFor: aString
withValue: aValue
andValForCalc: anotherValue
andOffsetX: anInteger
Y: anotherInteger
addCalculation: aBoolean

	| morph yPosition |
	yPosition := (anotherInteger * self defaultMorphEntryHeight).
	morph := self setupContainerMorphWith: anInteger at: yPosition.
	self 
		addMorph: morph;
		addResultMorphWith: aValue asString to: morph at: yPosition;
		addNameMorphWith: aString to: morph at: yPosition.

	aBoolean ifTrue: [
		self addCalcMorphWith: (((anotherValue/aValue) asFloat printShowingMaxDecimalPlaces: 3) asString)
			to: morph
			at: yPosition].