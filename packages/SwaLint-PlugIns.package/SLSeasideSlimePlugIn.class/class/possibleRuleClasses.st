tests
possibleRuleClasses

	^ (GRSlimeBlockLintRule allSubclasses, GRSlimeParseTreeLintRule allSubclasses)
		select: [:cls | cls name beginsWith: 'WA']