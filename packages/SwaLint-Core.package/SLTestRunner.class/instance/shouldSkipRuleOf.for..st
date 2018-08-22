testing
shouldSkipRuleOf: aTest for: aTestObject
	
	aTest method
		ifNil: [
			^ false ]
		ifNotNil: [
			^ SwaLint class: aTestObject testObjectClass ignoresRule: aTest method asSymbol ]
	