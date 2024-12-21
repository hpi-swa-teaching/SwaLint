displaying
formatAsSummary

	self valueFormatRule: [ :v |
		| format |
		format := v rounded asString, 
			' occurence', ((v = 1) ifTrue: [''] ifFalse: ['s']).
		(self testObject variables select: [:variable | self selectForSummary: variable]) ifNotEmpty: [:variables |
			format := format , (' ({1})' format: {(variables collect: #variable) asCommaStringAnd})].
		format].