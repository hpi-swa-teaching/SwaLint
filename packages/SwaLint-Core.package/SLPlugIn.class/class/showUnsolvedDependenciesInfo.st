dependencies
showUnsolvedDependenciesInfo

	| info |
	info := 'At least one dependency of ', self name,
		' is not met. Skipping installation of that plugin.'.	
	UIManager inform: (info withNoLineLongerThan: 30).