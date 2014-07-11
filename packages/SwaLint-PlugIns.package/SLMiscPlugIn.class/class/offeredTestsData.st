tests
offeredTestsData

	^ {
		"for methods"
		{#isGetter. nil. 'Method only returns a variable'}.
		{#isSetter. nil. 'Method only sets a variable'}.
		{#isPrivate. nil. 'Method is private'}.
		{#isAccessor. nil. 'Method ist getter or setter.'}.
		{#accessedVar. nil. 'Name of the accessed variable, for accessors only'}.
		{#usedInstVars. nil. 'Collection of all inst vars used by a method'}.
		{#usedVars. nil. 'Collection of all vars used by a method'}.
		{#usedForeignVars. nil. 'Collection of all foreign vars used by a method'}.
		{#methodWidth. nil. 'Maximum number of characters in the lines of a method'}.
		{#calledOperations. nil. ''}.
		{#methodCallers. nil. 'Collection of all callers of a method'}.
		{#overrides. nil. 'Method overrides a method from superclass'}.
		"for classes"
		{#allAccessors. nil. 'Collection of all accessors of a class'}.
		{#allPublicMethods. nil. 'Collection of all public methods of a class'}.
		{#classWidth. nil. 'Maximum method width'}.
		"{#miscTest. 'Misc-Plugin Dummy Test'. nil. 'Misc Tests'}."
	}