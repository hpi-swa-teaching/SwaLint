initialize-release
fetchSuperMethods
	
	^ superMethods := (SortedCollection new) 
		addAll: self superInstanceMethods;
		addAll: self superClassMethods;
		yourself