initialize-release
fetchAllVariables
	
	^ allVariables := (SortedCollection new) 
		addAll: self variables;
		addAll: self superVariables;
		yourself