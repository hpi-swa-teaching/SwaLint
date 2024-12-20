actions
browseTest

	self testSelected = 0 ifTrue: [^ self changed: #flash].
	^ (self tests at: self testSelected) browse