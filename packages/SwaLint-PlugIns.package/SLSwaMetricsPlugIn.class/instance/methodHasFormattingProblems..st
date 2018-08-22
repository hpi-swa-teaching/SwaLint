private
methodHasFormattingProblems: aSLMethodTestObject

	<slTestHidden: true
	longRuntime: nil>

	| src |
	aSLMethodTestObject shouldBeMethod.
	src := aSLMethodTestObject sourceString.
	src := aSLMethodTestObject 
		source: src
		withoutPattern: false
		withoutComments: true 
		withoutStrings: false 
		withoutLiteralCharacters: false.
	^ self failureResult: (src lines anySatisfy: [:line | line size > self class maxLineSize])