private
collectInstVarsOf: aSLMethodTestObject
	"If someone has the time to refactor me, go ahead!"

	| usedVars method accessorsOfClass literals instVars |
	"init"
	method := aSLMethodTestObject testObject.
	accessorsOfClass := aSLMethodTestObject parent resultOf: #allAccessors.
	usedVars := Set new.
	instVars := method methodClass allInstVarNames.
	literals := method allLiterals.
	
	"direct access"
	1 to: instVars size do: [ :i |
		 ((method writesField: i) or: [method readsField: i]) ifTrue:[
			usedVars add: (instVars at: i)]].
	
	"access via accessor"
	usedVars addAll: (accessorsOfClass 
		select: [ :a | 
			literals includes: a methodSelector]
		thenCollect: [ :a | 
			instVars at:	(a resultValueOf: #accessedVar)]).
	
	^ usedVars