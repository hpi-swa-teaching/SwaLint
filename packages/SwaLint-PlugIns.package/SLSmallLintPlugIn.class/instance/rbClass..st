private
rbClass: aSymbol
	"Discriminate between old (non-prefix) and newer (RB-prefix) RefactoringBrowser classes"

	^ self class environment
		at: aSymbol
		ifAbsent: [ | otherName |
			otherName := (aSymbol beginsWith: 'RB')
				ifTrue: [(aSymbol asString allButFirst: 2) asSymbol]
				ifFalse: [('RB', aSymbol asString) asSymbol].
			self class environment
				at: otherName]