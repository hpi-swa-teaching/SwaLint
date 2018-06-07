tests
offeredTestsData

	^ {
		{#precedenceRule. 'Precedence Test'. 'A+B*C should maybe be A+(B*C). Also checks for division (/) and integer division (//)'}.
		{#instVarInAllSubclasses. 'Instance varaible defined in all subclasses' . 'This test checks whether an instance varaible is defined in all subclasses which could be moved to the superclass'}.
		
		{#precedenceRuleMethod . nil .nil . SwaLint hiddenCategory}
	}