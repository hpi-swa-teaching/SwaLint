private
slpreference: prefName categoryList: categoryList description: helpString type: typeSymbol changeInformee: informeeSymbol  changeSelector: aChangeSelector
	"Create a preference for a preference pragma in a method."
	
	^ (self slpreference: prefName categoryList: categoryList description: helpString type: typeSymbol)
		changeInformee: (self environment at: informeeSymbol) changeSelector: aChangeSelector;
		yourself