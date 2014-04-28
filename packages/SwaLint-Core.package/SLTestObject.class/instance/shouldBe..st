errors
shouldBe: aSymbol

	(self kind = aSymbol) ifTrue: [^ self].
	^ SLWrongTypeError signal: self name, ' should be ', aSymbol