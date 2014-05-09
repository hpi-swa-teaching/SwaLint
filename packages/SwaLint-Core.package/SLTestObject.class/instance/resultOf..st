results
resultOf: aTest
	"Answer the result of aTest, If absent test me"

	| r |
	r := self testWith: aTest.
	r isError ifTrue: [
		"You accessed an error result!"
		^ r signal].
	^ r