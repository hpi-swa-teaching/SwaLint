testing
test01SyntheticBrainClassTest

	| brainClass |.
	
	brainClass := self buildEmptyClassTestObject.
	
	self 
		addNumericResultTo: brainClass 
			withThresholdValue: #LargeWeightedMethodCount
			andTresholdFor: #WMC forTest: #weightedMethodCount;
		addNumericResultTo: brainClass 
			withThresholdValue: #LargeClassLOC
			andTresholdFor: #ClassLOC forTest: #classLOC;
		addNumericResultTo: brainClass withValue: 0.4 forTest: #tightClassCohesion.
	
	brainClass methods add: (self buildBrainMethodFor: brainClass).

	
	self assert: (plugIn looksLikeBrainClass: brainClass).
	self assert: ((plugIn brainClass: brainClass) result).