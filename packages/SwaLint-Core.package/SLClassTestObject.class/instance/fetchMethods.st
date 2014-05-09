initialize-release
fetchMethods
	
	^ methods := (OrderedCollection new)
		addAll: self instanceMethods; 
		addAll: self classMethods;
		yourself.
