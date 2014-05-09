initialize-release
fetchVariables
	
	^ variables := (SortedCollection new) 
		addAll: self instanceVariables;
		addAll: self classVariables;
		yourself