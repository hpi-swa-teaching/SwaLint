window colors
windowColorFor: aModelClassName
	| classToCheck prefSymbol |
	self checkForWindowColors.
	classToCheck := Smalltalk at: aModelClassName.
	prefSymbol := self windowColorPreferenceForClassNamed: classToCheck name.
	[(classToCheck ~~ Object) and: [(self preferenceAt: prefSymbol) isNil]]
		whileTrue: 
				[classToCheck := classToCheck superclass.
				prefSymbol := self windowColorPreferenceForClassNamed: classToCheck name].
	^self valueOfPreference: prefSymbol ifAbsent: [Color white]