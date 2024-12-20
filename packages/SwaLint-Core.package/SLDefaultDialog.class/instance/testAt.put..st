accessing-test
testAt: anInteger put: aBoolean

	| target |
	target := self tests at: anInteger ifAbsent: [^ self].
	self testsSelected:
		(aBoolean 
			ifTrue: [self testsSelected copyWith: target]
			ifFalse: [self testsSelected copyWithout: target]).