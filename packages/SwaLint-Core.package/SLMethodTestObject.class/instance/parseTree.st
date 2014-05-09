accessing
parseTree

	^ parseTree ifNil: [
		parseTree := self testObject parseTree]