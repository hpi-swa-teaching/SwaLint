updating
loadFastTests
	| loadedTestSymbols loadedTests |
	loadedTestSymbols := self class defaultFastSelectionTests.
	loadedTests := self tests select: [:each | loadedTestSymbols includes: (each symbol)].
	self testsSelected: loadedTests.