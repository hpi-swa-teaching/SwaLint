converting
asPreference
	| preference |
	preference := Preference new.
	preference
		name: name
		defaultValue: defaultValue
		helpString: helpString
		localToProject: localToProject
		categoryList: categoryList
		changeInformee: changeInformee
		changeSelector:  changeSelector
		type: type.
	preference rawValue: self preferenceValue.
	^preference