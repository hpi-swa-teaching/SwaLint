tests
possibleRuleClasses

	^ (self subclassesIfAvailable: #RBBlockLintRule),
	   (self subclassesIfAvailable: #RBParseTreeLintRule)
		select: [:cls | cls name beginsWith: 'RB']