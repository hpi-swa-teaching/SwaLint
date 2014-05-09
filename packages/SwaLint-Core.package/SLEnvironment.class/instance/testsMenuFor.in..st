menu
testsMenuFor: aMenuMorph in: aMultipleSelectionModel 
	
	aMenuMorph 	title: 'Tests'.		
	aMultipleSelectionModel selectedItem ifNil: [^ aMenuMorph].
	
	aMenuMorph
		addLine;
		add: 'Show Description' 
			target: self
			selector: #showDescriptionForTest: 
			argument: aMultipleSelectionModel selectedItem.
			
	^ aMenuMorph