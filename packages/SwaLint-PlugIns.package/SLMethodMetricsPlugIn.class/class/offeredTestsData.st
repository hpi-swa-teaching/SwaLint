tests
offeredTestsData

	^ {
		{#isAddedService. 'Method is an added Service'. 'Answers whether method extends its class interface comapred to its superclass'}.
		{#methodCINT. 'Coupling Intensity of a Mehod [CINT]'. 'Answer the number of distinct message selectors sent by a method'}.
		{#methodCDISP. 'Coupling Dispersion of a Method [CDISP]'. 'The number of classes in which the operations called from the measured operation are defined, divided by CINT'}.
		{#methodCYCLO. 'Cyclomatic Complexity of a Method [CYCLO]'. 'Cyclomatic Complexity by McCabe'}.
		{#methodLOC. 'Lines of Code of a Method [LOC]'. 'Answer the number of lines of code of a method'}.
		{#numberOfAccessedVars. 'Number of accessed variables [NOAV]'. 'Number of accessed variables inside a method'}.
		{#maxNesting. 'Maximum Nesting Level'}.
		{#methodCM. 'Changing Methods [CM]'}.
		{#methodCC. 'Changing Classes [CC]'}.
		{#methodLAA. 'Locality of Attribute Accesses [LAA]'}.
		{#methodFDP. 'Foreign Data Providers [FDP]'}.
		{#methodATFD. 'Access To Foreign Data [ATFD]'}.
	}
		