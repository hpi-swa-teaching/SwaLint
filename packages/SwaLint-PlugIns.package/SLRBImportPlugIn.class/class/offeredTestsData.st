tests
offeredTestsData

	^ {
		{#precedenceRule. 'Possible occurences of A+B*C should be A+(B*C) (Precedence)'. 'A+B*C should maybe be A+(B*C). Also checks for division (/) and integer division (//)'}.
		{#instVarInAllSubclasses. 'Instance varaible defined in all subclasses' . 'This test checks whether an instance variable is defined in all subclasses which could be moved to the superclass'}.
		{#unreferencedVariable. 'Unreferenced variables' . 'Check for (class and instannce) variables not referenced. If a variable is not used in a class, it should be deleted.'}.
		{#longMethod. 'Long Methods (without empty lines)' . 'Checks for long methods. A methd is long if it has more then SLRBImportPlugIn >> longMethodSize (by default 10) statements. This method counts staments and not lines!'}.
		{#classNameInSelector . 'Redundant class name in selector' . 'Checks for the class name in a selector of a class side method. This is redundant since to call the you must already refer to the class name. For example, openHierarchyBrowserFrom: is a redundant name for HierarchyBrowser.'}.
		{#toDoRule. 'Uses to:do: instead of do:, with:do:' . 'Checks for people using to:do: when a do:, with:do: should be used. Looks for methods using #to: anObject size do: [:index], that do access anObject using #at: index.'}.
		{#instanceVariableCapitalizationRule . 'Instance variable capitalization' . 'Instance variable names on the instance- and class-side should start with a lowercase letter. Searches for classes that do not follow this convention (have at least one variable that does not)' }.
		{#toDoCollectRule . 'to:do: doesn''t use collect:' . 'Checks for users of to:do: when the shorter collect: would work.' }.
		{#collectionProtocolRule . 'Uses do: instead of collect: or select: [RBImport]' . 'Checks for people using the do: method instead of using the collect: or select: methods. The collect: and select: variants express the source code''s intentions better.' }.
		{#toDoCollectRuleMethod . nil . nil. SwaLint hiddenCategory }.
		{#toDoRuleMethod . nil . nil. SwaLint hiddenCategory }.
		{#classNameInSelectorMethod. nil . nil. SwaLint hiddenCategory}.
		{#longMethodMethod . nil .nil . SwaLint hiddenCategory}.
		{#precedenceRuleMethod . nil .nil . SwaLint hiddenCategory}.
		{#collectionProtocolRuleMethod . nil . nil. SwaLint hiddenCategory }
	}