accessing
displayedTests
	<uses: #(displayedResults shouldDisplayAllTests tests)>

	self shouldDisplayAllTests ifTrue: [^ self tests].
	^ self displayedResults collect: #test as: Set