private
similarInstVarsAreUsedBy: method1 and: method2

	^ ((method1 resultOf: #usedInstVars:) intersection: 
	   (method2 resultOf: #usedInstVars:)) isEmpty not