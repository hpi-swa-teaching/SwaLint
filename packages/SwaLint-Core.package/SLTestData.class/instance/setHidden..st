accessing
setHidden: aHiddenBool

	self category: (aHiddenBool 
		ifTrue: [ SwaLint hiddenCategory ] 
		ifFalse: [ self plugIn defaultCategory ]).