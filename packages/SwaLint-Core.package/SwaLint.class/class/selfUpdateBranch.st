app - self-updating
selfUpdateBranch
	<slpreference: 'SwaLint self-update branch'
	type: #String
	categories: #(SwaLint)
	defaultValue: ''
	helpText: 'The branch used for installing updates for SwaLint from the GitHub repository.'
	projectLocal: false
	changeInformee: #SwaLint
	changeSelector: #refresh>
	
	^ SelfUpdateBranch ifNil: [self defaultSelfUpdateBranch]