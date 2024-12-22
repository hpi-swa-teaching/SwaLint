initialize-release
fetchClassVariables
	
	classVariables := self 
		collect: SLVariableTestObject 
		from: self testObject classVarNames. 	
	classVariables do: [:each | each isClassVariable: true].
	classVariables addAll: (self 
		collect: SLVariableTestObject 
		from: self testObject theMetaClass instVarNames).
	classVariables do: [:each | each classSide: true].
	^ classVariables