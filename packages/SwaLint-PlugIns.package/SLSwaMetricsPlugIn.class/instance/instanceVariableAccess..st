private
instanceVariableAccess: aSLThing

	<slTestName:'Instance var access'
	description:  'Checks for consistent access to instance variables. Direct access to instance variables is a bad practise. You should rather use self #instanceVariableName to access it.'>
	
	| ivars |
	aSLThing shouldBeMethod.
	ivars := aSLThing testObject referredInstVars.
	^ self booleanResult: (
		ivars notEmpty and: [aSLThing testObject referredInstVars size > 1
							or: [aSLThing testObject selector ~= ivars anyOne
									and: [aSLThing testObject selector ~= ivars anyOne asSymbol asMutator]]])
	