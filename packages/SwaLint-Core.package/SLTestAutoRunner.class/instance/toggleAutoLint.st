actions
toggleAutoLint
	
	self lintingEnabled: self lintingEnabled not.
	
	self changed: #autolintEnabledLabel.