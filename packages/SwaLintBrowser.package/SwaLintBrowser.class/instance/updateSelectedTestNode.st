accessing - toolbuilder
updateSelectedTestNode

	"(self classes includes: self selectedClass)
		ifTrue: [self selectClass: self selectedClass ""reselect to update message selection""]
		ifFalse: [self selectClass: nil]."
	"self selectClass: (self classes at: 1 ifAbsent: [nil])."
	self selectClass: nil.
	self changed: #selectedTestNodePath.