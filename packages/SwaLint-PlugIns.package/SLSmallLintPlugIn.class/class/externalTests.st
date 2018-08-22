tests
externalTests

	^Array streamContents: [:stream |
		self possibleRuleClasses 
			select: [:cls | self looksLikeLintRule: cls]
			thenDo: [:cls| |test|
				test := cls new.
				stream nextPut: (Array
					with: (self testSymbolForLintClassName: cls name)
					with: test name
					with: test rationale
					with: test group)]]