window colors
windowColorPreferenceForClassNamed: aClassName
	| aColorSpec wording |
	aColorSpec := nil.
	wording := aColorSpec ifNil: [aClassName] ifNotNil: [aColorSpec wording].
	^(wording, 'WindowColor') asLegalSelector asSymbol.