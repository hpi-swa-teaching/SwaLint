accessing
children
	
	^ (OrderedCollection new)
		addAll: self methods;
		addAll: self variables;
		yourself