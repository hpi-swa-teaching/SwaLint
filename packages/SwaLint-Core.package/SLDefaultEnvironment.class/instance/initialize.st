initialize-release
initialize

	super initialize.
	self
		defaultClassCategories;
		defaultTestCategories;
		fetchSystemClasses;		
		reload.