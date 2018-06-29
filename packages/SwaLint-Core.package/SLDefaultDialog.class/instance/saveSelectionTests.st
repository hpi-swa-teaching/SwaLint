updating
saveSelectionTests
	| selectedTestSymbols |
	selectedTestSymbols := self testsSelected collect: [:each | each symbol].
	self class saveTestsSelected: selectedTestSymbols.