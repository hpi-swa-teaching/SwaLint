accessing - toolbuilder
childrenForTestNode: node
	<uses: #(results)>

	(node ifNil: ["hacked!"^ #()]) isCategory ifFalse: [^ #()].
	
	^ self childrenForTestCategory: node