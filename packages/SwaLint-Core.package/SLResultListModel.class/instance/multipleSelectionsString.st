menus
multipleSelectionsString

	^ (self multipleSelections ifTrue: ['<yes>'] ifFalse: ['<no>']), 
		'multi select' translated