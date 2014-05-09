updating
update: aSymbol

	(aSymbol == #allSelections) ifTrue: [
		self changed: #browseable].