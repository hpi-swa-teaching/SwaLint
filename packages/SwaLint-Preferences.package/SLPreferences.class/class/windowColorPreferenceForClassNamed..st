window colors
windowColorPreferenceForClassNamed: aClassName
	| aColorSpec wording |
	aColorSpec := WindowColorRegistry registeredWindowColorSpecFor: aClassName.
	wording := aColorSpec ifNil: [aClassName] ifNotNil: [aColorSpec wording].
	^(wording, 'WindowColor') asLegalSelector asSymbol