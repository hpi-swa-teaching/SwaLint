accessing-test
filterTests

	| pattern |
	pattern := Project uiManager
					request: 'Pattern(s) to select tests:\  (separate patterns with '';'')' withCRs
					initialAnswer: (testPattern ifNil: ['*']).
	(pattern isNil or: [pattern isEmpty]) ifTrue:
		[^self].
	self testsSelected:
		(((testPattern := pattern) subStrings: ';')
			inject: Set new
			into: [:matches :subPattern|
				matches
					addAll: (self tests select: [ :each | subPattern match: each name]);
					yourself]).