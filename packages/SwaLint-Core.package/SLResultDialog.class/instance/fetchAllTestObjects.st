updating
fetchAllTestObjects
	"Fetches System- and CategoryTestObjects as well as all selected ClassTestObjects "
	| allTestObjects |
	allTestObjects := OrderedCollection new
		addAll: (self environment testSystem children);
		add: (self environment testSystem);
		yourself.
	classesSelected do: [ :each | allTestObjects addAll: (self fetchChildTestObjectsFrom: each)].
	
	^ allTestObjects