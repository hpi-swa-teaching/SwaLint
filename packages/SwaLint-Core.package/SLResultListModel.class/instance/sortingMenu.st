menus
sortingMenu

	^ (MenuMorph new) 
		defaultTarget: self;
		add: 'tests' translated 
			selector: #listOrderBy: 
			argument: #tests;
		add: 'classes' translated 
			selector: #listOrderBy: 
			argument: #classes;
		yourself