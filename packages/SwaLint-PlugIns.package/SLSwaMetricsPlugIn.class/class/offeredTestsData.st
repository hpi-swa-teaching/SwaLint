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
		{#commentedMethods. 'Methods with comments'}.
		{#redundantCode. 'Redundant code'}.
		{#deadCode. 'Dead code'}.
		{#metaProgramming. 'Hints of meta-programming'}.
		"{#stdLibUse. 'Handling of Stdlib'}."
		{#nilProgramming. 'Handling of nil-values'}.
		{#magicNumbers. 'Magic numbers'}.
		"Hidden helper tests"
		{#methodHasMagicNumber. nil. nil. SwaLint hiddenCategory}.
		{#instanceVariableAccess. nil. nil. SwaLint hiddenCategory}.
		{#isUnclassifiedMethod . nil . nil . SwaLint hiddenCategory}.
		{#methodUsesMetaprogramming . nil . nil . SwaLint hiddenCategory}.
		{#methodHandlesNil . nil . nil . SwaLint hiddenCategory}.
		{#methodHasComment . nil . nil . SwaLint hiddenCategory}.
		{#methodHasFormattingProblems . nil . nil . SwaLint hiddenCategory}.
	}