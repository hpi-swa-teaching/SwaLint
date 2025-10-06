converting
asPreference
	| preference |
	preference := SLPreference new.
	preference
		name: name
		defaultValue: defaultValue
		helpString: helpString
		localToProject: self localToProject
		categoryList: categoryList
		changeInformee: changeInformee
		changeSelector:  changeSelector
		type: type.
	preference rawValue: self preferenceValue.
	^preference