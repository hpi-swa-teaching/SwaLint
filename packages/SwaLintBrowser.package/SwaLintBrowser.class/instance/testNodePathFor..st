accessing - toolbuilder - test tree objects
testNodePathFor: node
	"See comment in #testNodePathFor:parent:."

	node ifNil: [^ nil].
	^ (testNodePaths at: node ifAbsent: [^ nil "not yet initialized"])
		anyOne "good guess here because curent parent is unknown"