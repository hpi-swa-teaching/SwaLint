app - self-updating
metacello

	^ Metacello new
		baseline: self appName;
		repository: self selfUpdateGitHubPath;
		yourself