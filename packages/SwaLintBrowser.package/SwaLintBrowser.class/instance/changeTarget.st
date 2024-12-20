actions
changeTarget

	self target editModally ifFalse: [^ self].
	self changed: #target.
	self runTests.