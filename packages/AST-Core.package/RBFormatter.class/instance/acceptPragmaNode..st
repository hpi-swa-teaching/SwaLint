visitor-double dispatching
acceptPragmaNode: aPragmaNode
	codeStream nextPut: $<.
	self formatMessage: aPragmaNode cascade: false.	
	codeStream nextPut: $>