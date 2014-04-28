smalllint
findLintRuleFor: aTestSymbol
	"Create a new LintRule identified by aTestSymbol. Answer 
	nil if the test was not found"
	
	^ ((Smalltalk respondsTo: #globals)
		ifTrue: [Smalltalk globals] ifFalse: [Smalltalk]) "deprecation fix"
			at: (self class namespacePrefix, aTestSymbol, self class postfix) asSymbol
			ifAbsent: [nil]