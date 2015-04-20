smalllint
ruleFor: aTest
	"Answer an SmallLint rule, which is identified by aTest"
	
	^ self environment 
		at: (self classNameForLintRule: (self lintTestSymbolFor: aTest))
		ifPresent: [:r | r new]
		ifAbsent: [self testNotFound: aTest]
