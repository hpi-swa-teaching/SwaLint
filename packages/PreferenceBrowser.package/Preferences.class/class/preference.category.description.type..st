dynamic preferences
preference: prefName category: aCategory description: helpString type: typeSymbol
	"Add a preference residing in aMethod"
	|  aPreference |
	aPreference := PragmaPreference new.
	aPreference 
		 name: prefName
		 defaultValue: nil	"always nil"
		 helpString: helpString
		 localToProject: false "governed by the method"
		 categoryList: (aCategory isArray ifTrue:[aCategory] ifFalse:[{aCategory}])
		 changeInformee: nil
		 changeSelector: nil
		 type: typeSymbol.
	^aPreference