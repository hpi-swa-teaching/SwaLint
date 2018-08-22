as yet unclassified
tearDown

	self automaticUpdateClass ifNotNil: [self automaticUpdateClass removeFromSystem].
	self automaticUpdateClass: nil.