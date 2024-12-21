actions
browseSelectedTestNode

	| testNode |
	testNode := self selectedTestNode ifNil: [^ self changed: #flash].
	^ testNode browse