accessing - toolbuilder
selectMessageNamed: anObject

	selectedMessageName := anObject.
	self setClass: self selectedClass selector: anObject.
	self changed: #selectedMessageName.