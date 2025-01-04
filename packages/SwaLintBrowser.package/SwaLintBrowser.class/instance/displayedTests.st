accessing
displayedTests
	<uses: #(displayedResults shouldDisplayAllTests tests)>

	^ self cached:
		[self shouldDisplayAllTests
			ifTrue: [self tests]
			ifFalse: [self displayedResults collect: #test as: Set]]