accessing-test
testAt: anInteger put: aBoolean
	| target |
	target := tests at: anInteger ifAbsent: [^ self].

	testsSelected := aBoolean 
		ifTrue: [descriptionCollection addLast: target. testsSelected copyWith: target]
		ifFalse: [descriptionCollection removeAllSuchThat: [ :each | each symbol = target symbol]. testsSelected copyWithout: target.].
	self changed: #testSelected; changed: #testDescription; changed: #hasRunnable.