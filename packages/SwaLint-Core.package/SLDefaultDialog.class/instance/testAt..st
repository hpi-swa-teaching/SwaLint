accessing-test
testAt: anInteger

	^ testsSelected includes: (tests at: anInteger ifAbsent: [ ^ false ])