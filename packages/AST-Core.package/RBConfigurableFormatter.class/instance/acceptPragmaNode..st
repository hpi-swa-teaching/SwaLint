visitor-double dispatching
acceptPragmaNode: aPragmaNode
	codeStream nextPut: $<.
	self 
		formatSelectorAndArguments: aPragmaNode 
		firstSeparator: [ ] restSeparator: [ self space ].
	codeStream nextPut: $>