debugging
debugOut: anObject

	self debug ifTrue: [
		Transcript show: anObject asString].