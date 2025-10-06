actions
browseSelectedTestNodeMapper

	| testNode |
	testNode := self selectedTestNode ifNil: [^ self changed: #flash].
	^ testNode browseMapper