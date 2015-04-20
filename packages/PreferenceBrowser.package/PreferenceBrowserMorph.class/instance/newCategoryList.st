submorphs - category list
newCategoryList 
	^(PluggableListMorph
		on: self model
		list: #categoryList
		selected: #selectedCategoryIndex
		changeSelected: #selectedCategoryIndex:)
			color: Color white;
			borderInset;
			vResizing: #spaceFill;
			hResizing: #rigid;
			width: 150;
			yourself.