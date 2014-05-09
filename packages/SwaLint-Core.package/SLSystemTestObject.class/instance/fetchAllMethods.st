initializing
fetchAllMethods
	
	allMethods := SortedCollection new.
	self allClasses do: [ :each |
		allMethods addAll: each methods].
	^ allMethods