initialize-release
fetchInstanceVariables
	
	^ instanceVariables := self 
		collect: SLVariableTestObject 
		from: self testObject instVarNames