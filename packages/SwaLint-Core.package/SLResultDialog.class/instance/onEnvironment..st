initialization
onEnvironment: anEnvironment

	super onEnvironment: anEnvironment.
	self selectAllCategories.
	self selectAllClasses.
	self selectAllTestCategories.
	self selectAllTests.
	self update.