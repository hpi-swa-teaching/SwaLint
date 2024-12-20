accessing - toolbuilder
selectClass: anObject

	selectedClass := anObject.
	self selectMessageNamed: nil.
	self changed: #selectedClass.
	
	"(self messages includes: self selectedMessageName) ifFalse: [self selectMessageNamed: nil]."
	self selectMessageNamed: (self messages at: 1 ifAbsent: [nil]).