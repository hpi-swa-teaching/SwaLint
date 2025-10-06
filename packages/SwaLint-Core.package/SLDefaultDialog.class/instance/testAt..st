accessing-test
testAt: anInteger

	^ self testsSelected includes:
		(self tests at: anInteger ifAbsent: [ ^ false ])