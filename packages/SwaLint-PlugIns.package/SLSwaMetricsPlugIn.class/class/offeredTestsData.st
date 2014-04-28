tests
offeredTestsData

	^ {
		{#sloccount. 'Overall lines of code'}.
		{#classcount. 'Overall number of classes'}.
		{#methodcount. 'Overall number of methods'}.
		{#globalState. 'Occurances of global state on the class side'}.
		{#unclassifiedMethods. 'Unclassified methods'}.
		{#noClassComments. 'Missing class comments'}.
		{#metaProgramming. 'Hints of meta-programming'}.
		{#nilProgramming. 'Handling of nil-values'}.
		{#interestingMethods. 'Long or complex methods'}.
		{#commentedMethods. 'Methods with comments'}.
		{#badlyFormattedMethods. 'Methods with very long lines'}.
		"Hidden helper tests"
		{#isUnclassifiedMethod . nil . nil . SwaLint hiddenCategory}.
		{#methodUsesMetaprogramming . nil . nil . SwaLint hiddenCategory}.
		{#methodHandlesNil . nil . nil . SwaLint hiddenCategory}.
		{#methodHasComment . nil . nil . SwaLint hiddenCategory}.
		{#methodHasFormattingProblems . nil . nil . SwaLint hiddenCategory}.
	}