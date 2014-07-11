testing
testCompareNumberOfMethods

	| objects tests |
	objects := {SLDummyClass0. SLDummyClass01. SLDummyClass02. SLDummyClass021}
		collect: [ :aClass | aClass as: SLTestObject].
	tests :=  {#numberOfMethods. #numberOfInstanceMethods. #numberOfClassMethods}.

	testRunner runOnTests: tests andTestObjects: objects.
		
	objects do: [ :aTestObject |
		self assert: (aTestObject resultOf: tests first) = 
			((aTestObject resultOf: tests second) +
			(aTestObject resultOf: tests third))].