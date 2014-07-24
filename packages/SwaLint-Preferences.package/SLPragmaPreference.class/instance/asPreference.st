converting
asPreference
	| preference |
	
	preference := SLPreference new.
	preference
		name: name
		defaultValue: defaultValue
		helpString: helpString
		localToProject: localToProject
		categoryList: categoryList
		changeInformee: changeInformee
		changeSelector:  changeSelector
		viewRegistry: viewRegistry.
	preference rawValue: self preferenceValue.
	^ preference