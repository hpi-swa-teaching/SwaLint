results
classNamespaceResult: aString

	^ (self result: aString)
		valueFormatRule: [ :v | v ifNil: ['<none>']];
		colorRule: [ :v | v ifNil: [SLResult orange] ifNotNil: [SLResult black]];
		yourself