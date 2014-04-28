initialize-release
defaultTestCategories
	
	testCategories := (SLMultipleSelectionModel 
		withModel: self withMessage: #selectableTestCategories)
		menuGetter: #testCategoryMenuFor:in:.
		
	tests := (SLMultipleSelectionModel 
		withModel: self withMessage: #selectableTests 
		withAsStringSelector: #name)
		menuGetter: #testsMenuFor:in:.
	
	testCategories addDependent: tests.
	testCategories addDependent: self.
	tests addDependent: self.