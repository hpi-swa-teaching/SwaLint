tests
offeredTestsData

	^ {
		{#isAddedService. 'Method is an added Service'. 'Answers whether method extends its class interface compared to its superclass'}.
		{#methodCINT. 'Coupling Intensity of a Mehod [CINT]'. 'Answer the number of distinct message selectors sent by a method'}.
		{#methodCDISP. 'Coupling Dispersion of a Method [CDISP]'. 'The number of classes in which the operations called from the measured operation are defined, divided by CINT'}.
		{#methodCYCLO. 'Cyclomatic Complexity of a Method [CYCLO]'. 'Cyclomatic Complexity by McCabe'}.
		{#methodLOC. 'Lines of Code of a Method [LOC]'. 'Answer the number of lines of code of a method. Does count empty lines and comments.'}.
		{#numberOfAccessedVars. 'Number of accessed variables [NOAV]'. 'Number of accessed variables inside a method'}.
		{#maxNesting. 'Maximum Nesting Level' . '' }.
		{#methodCM. 'Changing Methods [CM]' . 'Counts number of methods that call this one'}.
		{#methodCC. 'Changing Classes [CC]' . 'Counts number of classes that call this one.'}.
		{#methodLAA. 'Locality of Attribute Accesses [LAA]' . 'LAA: Locality of Attribute Accesses. To measure if the method uses more attributes from other classes than its own'}.
		{#methodFDP. 'Foreign Data Providers [FDP]' . 'FDP: Foreign Data Providers. To measure the number of classes that the foreign attributes belong to'}.
		{#methodATFD. 'Access To Foreign Data [ATFD]' .'ATFD: Access To Foreign Data. To measure how many foreign attributes the method is using'}.
	}