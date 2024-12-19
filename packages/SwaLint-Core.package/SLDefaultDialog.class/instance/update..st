updating
update: aspect

	aspect == self environment ifTrue:
		[self update].
	^ super update: aspect