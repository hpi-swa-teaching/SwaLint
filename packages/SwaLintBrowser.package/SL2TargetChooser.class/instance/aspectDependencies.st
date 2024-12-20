updating
aspectDependencies

	^ Dictionary new
		at: #windowTitle put: #(#labelString);
		
		at: #availableClasses put: #(selectedSystemCategories);
		at: #hasClassSelected: put: #(selectedClasses);
		at: #hasClassSelectedAt: put: #(hasClassSelected:);
		at: #hasSystemCategorySelected: put: #(selectedSystemCategories);
		at: #hasSystemCategorySelectedAt: put: #(hasSystemCategorySelected:);
		
		yourself