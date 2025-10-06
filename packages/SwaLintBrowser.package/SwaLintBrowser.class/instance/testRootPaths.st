accessing - toolbuilder - test tree objects
testRootPaths
	<uses: #(displayedTests)>

	^ (self childrenForTestCategory: nil)
		collect: [:childNode | self testNodePathFor: childNode parent: nil]