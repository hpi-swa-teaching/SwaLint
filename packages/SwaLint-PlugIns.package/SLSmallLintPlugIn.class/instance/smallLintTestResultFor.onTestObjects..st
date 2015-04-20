smalllint
smallLintTestResultFor: aTest onTestObjects: aCollection
	"Carry out SmallLintTest identified by aTestSymbol on 
	aTestObjectClass and answer all method selectors for the 
	class where SmallLint found problems"
	
	| rule |
	rule := (self rbClass: #RBSmalllintChecker)
		runRule: (self ruleFor: aTest) 
		onEnvironment: (self environmentFor: aCollection).
	^ rule result