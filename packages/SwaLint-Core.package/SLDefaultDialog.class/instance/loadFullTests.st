updating
loadFullTests
	| loadedTestSymbols loadedTests |
	loadedTestSymbols := self class defaultFullSelectionTests.
	loadedTests := self tests select: [:each | loadedTestSymbols includes: (each symbol)].
	self testsSelected: loadedTests.