private
directlyAccessedVars: aSLMethodTestObject

	| usedVars method instVars classTestObject |

	method := aSLMethodTestObject testObject.
	classTestObject := aSLMethodTestObject parent.
	usedVars := Set new.
	instVars := method methodClass allInstVarNames.

	1 to: instVars size do: [ :i |
	 ((method writesField: i) or: [ method readsField: i ]) ifTrue: [
		usedVars add: (classTestObject variableForSelector: (instVars at: i)) ] ].
	
	^ usedVars