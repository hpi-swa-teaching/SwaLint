accessing - toolbuilder - test tree objects
testNodePathFor: node parent: path

	^ ((testNodePaths ifNil: [testNodePaths := Dictionary new])
		at: node
		ifAbsentPut: [IdentityDictionary new])
			at: path
			ifAbsentPut: [((path ifNil: ['']) lines copyWith: node asString) joinSeparatedBy: String cr]