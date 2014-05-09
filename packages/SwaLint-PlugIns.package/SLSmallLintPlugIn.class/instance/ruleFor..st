smalllint
ruleFor: aTest
	"Answer an SmallLint rule, which is identified by aTest"
	
	| rule |
	rule := self findLintRuleFor: (self lintTestSymbolFor: aTest).
	^ rule 
		ifNil: [self testNotFound: aTest]
		ifNotNil: [:r | r new]