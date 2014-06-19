initialize-release
fetchSuperVariables
	
	^ superVariables := (SortedCollection new) 
		addAll: self superInstanceVariables;
		addAll: self superClassVariables;
		yourself