initialize-release
fetchSuperClassVariables
	
	superClassVariables := self 
		collect: SLVariableTestObject 
		from: self testObject superclass allClassVarNames.
	classVariables do: [:each | each isClassVariable: true].
	classVariables addAll: (self
		collect: SLVariableTestObject 
		from: self testObject theMetaClass superclass allInstVarNames).
	classVariables do: [:each | each classSide: true].
	^ superClassVariables