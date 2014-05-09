accessing
selectedItemAsString
	"Answer my model specific string representation of 
	the selected class"
	
	^ self selectedItem 
			ifNil: [ nil ] 
			ifNotNil: [ self asStringOf: self selectedItem ]