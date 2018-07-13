as yet unclassified
tearDown

	self testAutomaticUpdateClass ifNotNil: [self testAutomaticUpdateClass removeFromSystem].
	self testAutomaticUpdateClass: nil.