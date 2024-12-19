app - accessing
githubUrl

	^ 'https://github.com/{1}/{2}' format: {
		self githubRepositoryParams first.
		self githubRepositoryParams second}