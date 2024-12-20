accessing-classes
filterClasses

	| pattern |
	pattern := Project uiManager
					request: 'Pattern(s) to select tests:\  (separate patterns with '';'')' withCRs
					initialAnswer: (classPattern ifNil: ['*']).
	(pattern isNil or: [pattern isEmpty]) ifTrue:
		[^self].
	self classesSelected:
		(((classPattern := pattern) subStrings: ';')
			inject: Set new
			into: [:matches :subPattern|
				matches
					addAll: (self classes select: [ :each | subPattern match: each name]);
					yourself]).
	self update.