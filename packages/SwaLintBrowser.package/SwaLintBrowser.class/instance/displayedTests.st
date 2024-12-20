accessing
displayedTests
	<uses: #(results shouldDisplayAllTests tests)>

	self shouldDisplayAllTests ifTrue: [^ self tests].
	^ self results collect: #test as: Set