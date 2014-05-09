menu
classCategoryMenuFor: aMenuMorph in: aMultipleSelectionModel 

	| package category |
	aMenuMorph
		title: 'Categories';
		addLine;
		add: 'Pattern select'
		target: self
		selector: #selectClassCategoriesByFilter
		argument: nil.
	
	category := aMultipleSelectionModel 
		selectedItemAsString ifNil: [^ aMenuMorph].
	package := self packageForCategory: category.
	
	aMenuMorph 
		addLine;
		add: 'Select category'
		target: self
		selector: #selectCategory:
		argument: category.
	
	package ifNotNil: [
		aMenuMorph 
			add: 'Select package'
			target: self
			selector: #selectPackage:
			argument: package].
		
	^ aMenuMorph