actions
inspectSelectedTestNode

	| testNode |
	testNode := self selectedTestNode ifNil: [^ self changed: #flash].
	^ testNode inspect