smalllint
ruleFor: aTest
	"Answer an SmallLint rule, which is identified by aTest"
	
	^ self class environment 
		at: (self classNameForLintRule: (self lintTestSymbolFor: aTest)) asSymbol
		ifPresent: [:r | r new]
		ifAbsent: [self testNotFound: aTest]
