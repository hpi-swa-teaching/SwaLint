testing
testRuleFor
	
	| plugin rule |
	plugin := SLSmallLintPlugIn new.
	rule := plugin ruleFor: 
		(SLTestCase dummyEnvironment testDataFor: #smallLintClassInstVarNotInitialized).
	
	self assert: [ 
		rule name = 'Has class instance variables but no initialize method' ].
	
	self assert: [ rule isKindOf: RBBlockLintRule ].