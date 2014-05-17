testing
test00SelfTest

	|result|
	
	result := self numericResultWithValue: 10.
	self assert: (result result) equals: 10.
	
	result := self numericResultWithThresholdValue: #high andThresholdFor: #ClassLOC.
	self assert: (result = #high).
	self assert: (result > #low).
	self assert: (result < #veryHigh).