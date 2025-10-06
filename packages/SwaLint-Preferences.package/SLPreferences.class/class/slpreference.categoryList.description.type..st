private
slpreference: prefName categoryList: categoryList description: helpString type: typeSymbol
	"Create a preference for a preference pragma in a method."
	
	^ SLPragmaPreference new
		 name: prefName
		 helpString: helpString
		 categoryList: categoryList
		 type: typeSymbol