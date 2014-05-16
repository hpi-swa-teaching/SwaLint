tests
methodLineEndingHelper: aString
	
	| cr lf  |

	cr := aString occurrencesOf: Character cr.
	lf := aString occurrencesOf: Character lf.
	((lf = 0) and: [cr = 0])
		ifTrue: [^0]. "leere Methode"
	(lf = 0)
		ifTrue: [^1]. "Squeak"
	(cr = 0)
		ifTrue: [^2]. "Unix"
	(cr = lf)
		ifTrue: [^3]. "Window"
	^4. "mix"