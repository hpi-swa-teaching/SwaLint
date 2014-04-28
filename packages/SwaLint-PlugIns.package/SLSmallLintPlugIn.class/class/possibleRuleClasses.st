tests
possibleRuleClasses

	^ (RBBlockLintRule allSubclasses, RBParseTreeLintRule allSubclasses)
		select: [:cls | cls name beginsWith: 'RB']