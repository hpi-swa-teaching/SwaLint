private
commonStartOf: string1 and: string2

	| i |
	i := 0.
	[i := i +1.
	 (string1 at: i ifAbsent: [$/]) = (string2 at: i ifAbsent: [$\])] whileTrue.
	^ (i > 2) ifTrue: [string1 first: i-1] ifFalse: ['']