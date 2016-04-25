private
instanceVariableAccess: aSLThing
	| ivars |
	aSLThing shouldBeMethod.
	ivars := aSLThing testObject referredInstVars.
	^ self booleanResult: (
		ivars notEmpty and: [aSLThing testObject referredInstVars size > 1
							or: [aSLThing testObject selector ~= ivars anyOne
									and: [aSLThing testObject selector ~= ivars anyOne asSymbol asMutator]]])
