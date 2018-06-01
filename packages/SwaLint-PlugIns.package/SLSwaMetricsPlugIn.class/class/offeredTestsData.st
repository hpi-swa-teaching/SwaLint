tests
offeredTestsData

	^ {
		{#sloccount. 'Overall lines of code'}.
		{#classcount. 'Overall number of classes'}.
		{#methodcount. 'Overall number of methods'}.
		{#namespaceCount. 'Namespaces'}.
		{#instanceVariableAccessIsConsistent. 'Instance var access'}.
		{#globalState. 'Occurances of global state on the class side'}.
		{#interestingMethods. 'Long or complex methods'}.
		{#badlyFormattedMethods. 'Methods with very long lines'}.
		{#unclassifiedMethods. 'Unclassified methods'}.
		{#noClassComments. 'Missing class comments'}.
		{#commentedMethods. 'Methods with comments'. 'This test finds all methods, which contain a comment.'}.
		{#redundantCode. 'Redundant code'. nil . nil. nil. true}.
		{#metaProgramming. 'Hints of meta-programming'}.
		"{#stdLibUse. 'Handling of Stdlib'}."
		{#nilProgramming. 'Handling of nil-values'}.
		{#magicNumbers. 'Magic numbers'. 'A simple magic number test. Magic numbers defined by this test are all numbers, which are not a -1, 0 or 1 and do not appear as the single return in a return statement. Numbers in strings are ignored.'}.
		"Hidden helper tests"
		{#methodHasMagicNumber. nil. nil. SwaLint hiddenCategory}.
		{#instanceVariableAccess. nil. nil. SwaLint hiddenCategory}.
		{#isUnclassifiedMethod . nil . nil . SwaLint hiddenCategory}.
		{#methodUsesMetaprogramming . nil . nil . SwaLint hiddenCategory}.
		{#methodHandlesNil . nil . nil . SwaLint hiddenCategory}.
		{#methodHasComment . nil . nil . SwaLint hiddenCategory}.
		{#methodHasFormattingProblems . nil . nil . SwaLint hiddenCategory}.
	}