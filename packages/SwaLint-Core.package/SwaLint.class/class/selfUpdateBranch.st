app - self-updating
selfUpdateBranch
	<slpreference: 'SwaLint self-update branch'
		categoryList: #(SwaLint)
		description: 'The branch used for installing updates for SwaLint from the GitHub repository.'
		type: #String>
	
	^ SelfUpdateBranch ifNil: [self defaultSelfUpdateBranch]