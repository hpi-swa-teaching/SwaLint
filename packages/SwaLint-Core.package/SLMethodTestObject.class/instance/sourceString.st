accessing
sourceString
	"Sometimes the source code is nil, but this always
	answers a string."

	| s |
	s := self sourceCode.
	^ s ifNil: [''] ifNotNil: [s asString]