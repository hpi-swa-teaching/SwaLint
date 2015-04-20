reacting to change
displaySizeChanged
	self flag: #todo.
	"only change font on small-land image"
	self smallLandFonts.
	self tinyDisplay
		ifTrue: [self enable: #scrollBarsNarrow]
		ifFalse: [self disable: #scrollBarsNarrow].
	self tinyDisplay 
		ifTrue:[self disable: #biggerHandles] 
		ifFalse:[self enable: #biggerHandles]