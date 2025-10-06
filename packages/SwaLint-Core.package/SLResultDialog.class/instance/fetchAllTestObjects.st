updating
fetchAllTestObjects
	"Fetches System- and CategoryTestObjects as well as all selected ClassTestObjects "
	| allTestObjects |
	allTestObjects := Set new
		addAll: (self testEnvironment testSystem children);
		add: (self testEnvironment testSystem);
		yourself.
	self classesSelected do: [ :each | allTestObjects addAll: (self fetchChildTestObjectsFrom: each)].
	
	^ allTestObjects