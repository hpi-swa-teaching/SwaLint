initialize-release
fetchClassVariables
	
	classVariables := self 
		collect: SLVariableTestObject 
		from: self testObject class instVarNames. 	
	classVariables addAll: (self 
		collect: SLVariableTestObject 
		from: self testObject classVarNames).
	^ classVariables