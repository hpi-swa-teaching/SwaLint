initialization
onEnvironment: anEnvironment

	super onEnvironment: anEnvironment.
	self 
		selectAllCategories;
		selectAllClasses;
		selectAllTestCategories;
		selectAllTests;
		update.