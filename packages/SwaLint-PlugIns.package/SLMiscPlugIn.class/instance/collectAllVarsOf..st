private
collectAllVarsOf: aSLMethodTestObject

	| allClasses allUsedVars |
	
	allUsedVars := Set new.
	allClasses := aSLMethodTestObject testSystem allClasses.
	
	allUsedVars addAll: (self collectInstVarsOf: aSLMethodTestObject).
	allClasses do: [ :class | allUsedVars addAll: 
			(self indirectlyAccessedVars: aSLMethodTestObject in: class) ].
	
	^ allUsedVars