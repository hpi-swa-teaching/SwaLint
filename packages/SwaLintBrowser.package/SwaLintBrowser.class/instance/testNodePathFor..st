accessing - toolbuilder - test tree objects
testNodePathFor: node

	node ifNil: [^ nil].
	^ (testNodePaths at: node ifAbsent: [^ nil "not yet initialized"]) first