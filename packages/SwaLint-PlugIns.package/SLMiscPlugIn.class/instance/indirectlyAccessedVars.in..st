private
indirectlyAccessedVars: aSLMethodTestObject in: aSLClassTestObject

	| usedVars accessorsOfClass literals instVars |

	accessorsOfClass := aSLClassTestObject resultOf: #allAccessors:.
	usedVars := Set new.
	instVars := aSLClassTestObject testObject allInstVarNames.
	literals := aSLMethodTestObject testObject allLiterals.

	usedVars addAll: (accessorsOfClass 
		select: [ :a | 
			literals includes: a methodSelector ]
		thenCollect: [ :a | 
			aSLClassTestObject variableForSelector: 
				(instVars at: (a resultValueOf: #accessedVar:)) ]).
	
	^ usedVars