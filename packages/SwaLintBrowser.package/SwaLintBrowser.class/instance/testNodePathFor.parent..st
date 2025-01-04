accessing - toolbuilder - test tree objects
testNodePathFor: node parent: parentPath
	"What's that? PluggableTreeMorph requires every item in the tree to be unique, but tests can appear under multiple categories. To meet this assumption, we generate and maintain a unique surrogate for each test node in the context of its parent here.
	Because we use string representations of tests here, the state of the tree should be maintained after rerunning (+ recreating) all tests."

	^ ((testNodePaths ifNil: [testNodePaths := Dictionary new])
		at: node
		ifAbsentPut: [IdentityDictionary new])
			at: parentPath
			ifAbsentPut: [((parentPath ifNil: ['']) lines copyWith: node asString) joinSeparatedBy: String cr]