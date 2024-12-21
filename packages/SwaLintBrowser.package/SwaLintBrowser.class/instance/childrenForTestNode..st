accessing - toolbuilder
childrenForTestNode: node
	<uses: #(displayedResults)>

	(node ifNil: ["hacked!"^ #()]) isCategory ifFalse: [^ #()].
	
	^ self childrenForTestCategory: node