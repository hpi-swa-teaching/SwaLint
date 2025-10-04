initialize-release
fetchSuperClassVariables
	
	superClassVariables := self 
		collect: SLVariableTestObject 
		from: self testObject superclass allClassVarNames.
	superClassVariables do: [:each | each isClassVariable: true].
	superClassVariables addAll: (self
		collect: SLVariableTestObject 
		from: self testObject theMetaClass superclass allInstVarNames).
	superClassVariables do: [:each | each classSide: true].
	^ superClassVariables