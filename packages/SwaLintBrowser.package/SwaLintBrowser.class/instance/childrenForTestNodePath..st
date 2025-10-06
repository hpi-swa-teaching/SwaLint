accessing - toolbuilder - test tree objects
childrenForTestNodePath: path
	<uses: #(childrenForTestNode:)>

	^ (self childrenForTestNode: (self testNodeForPath: path))
		collect: [:childNode | self testNodePathFor: childNode parent: path]