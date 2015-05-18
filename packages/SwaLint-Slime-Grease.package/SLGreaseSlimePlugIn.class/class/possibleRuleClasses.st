tests
possibleRuleClasses

	^ (self subclassesIfAvailable: #GRSlimeBlockLintRule),
	   (self subclassesIfAvailable: #GRSlimeParseTreeLintRule)
		select: [:cls | cls name beginsWith: 'GR']