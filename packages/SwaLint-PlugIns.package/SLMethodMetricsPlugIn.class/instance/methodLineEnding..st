tests
methodLineEnding: aSLMethodTestObject
	
	| cr lf  |

	cr := aSLMethodTestObject sourceCode occurrencesOf: Character cr.
	lf := aSLMethodTestObject sourceCode occurrencesOf: Character lf.
	((lf = 0) and: [cr = 0])
		ifTrue: [^(self integerResult: 0)]. "leere Methode"
	(lf = 0)
		ifTrue: [^(self integerResult: 1)]. "SQEAK WTF"
	(cr = 0)
		ifTrue: [^ (self integerResult: 2)]. "Unix"
	(cr = lf)
		ifTrue: [^ (self integerResult: 3)]. "Window"
	^ (self integerResult: 4). "mix"