tests
offeredTestsData

	^ {
		{#precedenceRule. 'Precedence Test'. 'A+B*C should maybe be A+(B*C). Also checks for division (/) and integer division (//)'}.
		{#instVarInAllSubclasses. 'Instance varaible defined in all subclasses' . 'This test checks whether an instance varaible is defined in all subclasses which could be moved to the superclass'}.
		{#unreferencedVariable. 'Unreferenced variables' . 'Check for (class and instannce) variables not referenced. If a variable is not used in a class, it should be deleted.'}.
		{#longMethod. 'Long Methods (without empty lines)' . 'Checks for long methods. A methd is long if it has more then SLRBImportPlugIn >> longMethodSize (by default 10) statements. This method counts staments and not lines!'}.
		
		{#longMethodsMethod . nil .nil . SwaLint hiddenCategory}.
		{#precedenceRuleMethod . nil .nil . SwaLint hiddenCategory}
	}