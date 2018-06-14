tests
offeredTestsData

	^ {
		{#sloccount. 'Overall lines of code' . 'Lines of code including blank lines and comments.'}.
		{#classcount. 'Overall number of classes' . 'Number of classes.'}.
		{#methodcount. 'Overall number of methods' . 'Number of methods'}.
		{#namespaceCount. 'Namespaces' . 'Number of distinct namespaces.'}.
		{#instanceVariableAccessIsConsistent. 'Instance var access' . 'Checks for consistent access to instance variables. Direct access to instance variables is a bad practise. You should rather use self #instanceVariableName to access it.'}.
		{#globalState. 'Occurances of global state on the class side' . 'Doing so without being aware of this is dangerous. Make sure that there is a way to reset it if neccessary.'}.
		{#badlyFormattedMethods. 'Methods with very long lines' . 'Long lines cannot be displayed in an average sized browser window, making your code harder to read. Also it can be a symptom of bad code quality.'}.
		"{#unclassifiedMethods. 'Unclassified methods'}."
		{#noClassComments. 'Missing class comments' . 'Class comments are useful to give other developers insights in how your classes work and how they interact with other classes.'}.
		{#commentedMethods. 'Methods with comments'. 'This test finds all methods, which contain a comment.' }.
		{#metaProgramming. 'Hints of meta-programming' . 'Meta-programming is certainly not a good practise and should only be used, if there are clear benefits that cannot be reached otherwise.'}.
		"{#stdLibUse. 'Handling of Stdlib'}."
		{#nilProgramming. 'Handling of nil-values' . 'Consider using the Nil-Object pattern instead. Often times, nil values actually have a meaning and can therefore be replaced with a domain specific object. This makes the code more intuitive and makes debugging easier.'}.
		{#magicNumbers. 'Magic numbers'. 'A simple magic number test. Magic numbers defined by this test are all numbers, which are not a -1, 0 or 1 and do not appear as the single value in a return statement or in an assignment. Numbers in strings are ignored.'}.
		"Hidden helper tests"
		{#methodHasMagicNumber. nil. nil. SwaLint hiddenCategory}.
		{#instanceVariableAccess. nil. nil. SwaLint hiddenCategory}.
		"{#isUnclassifiedMethod . nil . nil . SwaLint hiddenCategory}."
		{#methodUsesMetaprogramming . nil . nil . SwaLint hiddenCategory}.
		{#methodHandlesNil . nil . nil . SwaLint hiddenCategory}.
		{#methodHasComment . nil . nil . SwaLint hiddenCategory}.
		{#methodHasFormattingProblems . nil . nil . SwaLint hiddenCategory}.
	}