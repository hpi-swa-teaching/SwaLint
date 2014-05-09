menu
classMenuFor: aMenuMorph in: aMultipleSelectionModel 

	| package class |
	aMenuMorph
		title: 'Classes';
		addLine;
		add: 'Pattern select'
		target: self
		selector: #selectClassesByFilter
		argument: nil.
		
	class := aMultipleSelectionModel 
		selectedItemAsString ifNil: [^ aMenuMorph].	
	package := self packageForClassNamed: class. 	
	
	aMenuMorph 
		addLine;
		add: 'Select category'
		target: self
		selector: #selectCategory: 
		argument: (Smalltalk classNamed: class) category.

	package ifNotNil: [
		aMenuMorph 
			add: 'Select package'
			target: self
			selector: #selectPackage:
			argument: package].
		
	^ aMenuMorph