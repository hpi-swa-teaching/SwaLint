tests
offeredTestsData

	^ {
		"for methods"
		{#isGetter. nil. 'Method only returns a variable'}.
		{#isSetter. nil. 'Method only sets a variable'}.
		{#isAccessor. nil. 'Method ist getter or setter.'}.
		{#accessedVar. nil. 'Name of the accessed variable, for accessors only'}.
		{#usedInstVars. nil. 'Collection of all inst vars used by a method'}.
		{#methodWidth. nil. 'Maximum number of characters in the lines of a method'}.
		{#calledOperations. nil. ''}.
		"for classes"
		{#allAccessors. nil. 'Collection of all accessors of a class'}.
		{#classWidth. nil. 'Maximum method width'}.
		"{#miscTest. 'Misc-Plugin Dummy Test'. nil. 'Misc Tests'}."
	}