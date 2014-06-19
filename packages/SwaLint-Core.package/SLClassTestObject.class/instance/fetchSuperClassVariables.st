initialize-release
fetchSuperClassVariables
	
	superClassVariables := self 
		collect: SLVariableTestObject 
		from: self testObject class superclass allInstVarNames. 	
	superClassVariables addAll: (self 
		collect: SLVariableTestObject 
		from: self testObject superclass allClassVarNames).
	^ superClassVariables