updating
loadSelectionTests
	| loadedTestSymbols loadedTests |
	loadedTestSymbols := self class lastSelectionTests.
	loadedTests := self tests select: [:each | loadedTestSymbols includes: (each symbol)].
	self testsSelected: loadedTests.