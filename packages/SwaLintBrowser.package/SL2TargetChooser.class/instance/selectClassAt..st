accessing - toolbuilder
selectClassAt: anInteger

	self selectClass: (self availableClasses at: anInteger ifAbsent: [nil]).