results displaying
inspectErrorResult: aSLErrorResult

	| i errors |
	errors := aSLErrorResult exception errorStack.
	i := UIManager default
		chooseFrom: (errors collect: [:e | self errorString: e]) 
		title: 'Error trace of ', aSLErrorResult asString.
	(i > 0) ifTrue: [(errors at: i) resignal].
			