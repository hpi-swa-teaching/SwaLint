accessing
name

	^ self parent name, 
		(self classSide ifTrue: [' class'] ifFalse: ['']),
		' - ', self variableName