initialize-release
fetchSuperInstanceVariables
	
	^ superInstanceVariables := self 
		collect: SLVariableTestObject 
		from: self testObject superclass allInstVarNames