private
collectInstVarsOf: aSLMethodTestObject

	| usedVars |
	
	usedVars := Set new.
	
	usedVars
		addAll: (self directlyAccessedVars: aSLMethodTestObject);
		addAll: (self indirectlyAccessedVars: aSLMethodTestObject 
												in: (aSLMethodTestObject parent)).
	
	^ usedVars