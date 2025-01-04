debugging
debugOut: anObject

	self debugMode ifTrue: [
		Transcript show: anObject asString].