accessing-test
filterTests
	| pattern |
	pattern := UIManager default 
					request: 'Pattern(s) to select tests:\  (separate patterns with '';'')' withCRs
					initialAnswer: (testPattern ifNil: '*').
	(pattern isNil or: [pattern isEmpty]) ifTrue:
		[^self].
	testsSelected := ((testPattern := pattern) subStrings: ';')
							inject: Set new
							into: [:matches :subPattern|
								matches
									addAll: (tests select: [ :each | subPattern match: each name]);
									yourself].
	self
		changed: #testSelected;
		changed: #runnable;
		update.