tests
offeredTestsData

	^ {
		{#dotAfterReturn. 'Dot after Return Consistency'. 'Evaluates how consistently dots were put after a return statement.'}.
		{#csMethodHasDotAfterReturn. nil. '(private) Test a single method for dotAfterReturn'. SwaLint hiddenCategory}.
		{#longMethods. 'Long Methods'}.
		{#complexMethods. 'Complex Methods'. 'Methods with a high nesting or complex structure are hard to understand and maintain and can cause bugs'}.
		{#isComplexMethod. nil. '(private) Test a single method whether it is complex'. SwaLint hiddenCategory}.
		{#namespaceSimulation. 'Namespace Simulation'. 'Within a project, all classes should start with a prefix.'}.		
		{#nsDict. nil. 'Dictionary class -> namespace'. SwaLint hiddenCategory}.
		{#nsTotal. 'Total namespaces'. 'Number of all found namespaces'. SwaLint hiddenCategory}.
		{#nsFreeClasses. 'Classes without namespace'. 'Number of all classes which don''t seem to have a namespace'. SwaLint hiddenCategory}.
		{#nsClass. 'Namespace'. 'The detected namespace of a class'. SwaLint hiddenCategory}.
	}