updating
update: aspect

	aspect == self testEnvironment ifTrue:
		[self update].
	^ super update: aspect