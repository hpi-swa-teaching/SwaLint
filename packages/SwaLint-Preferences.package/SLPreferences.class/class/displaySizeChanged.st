reacting to change
displaySizeChanged
	self flag: #todo.
	"only change font on small-land image"
	self smallLandFonts.
	self bigDisplay
		ifTrue: [self disable: #scrollBarsNarrow]
		ifFalse: [self enable: #scrollBarsNarrow].
self tinyDisplay ifTrue:[self disable: #biggerHandles] ifFalse:[self enable: #biggerHandles]