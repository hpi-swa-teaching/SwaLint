displaying
format: aRule
	"Answer a readable version of what I stand for"
	
	| item s |
	item := (aRule = #tests) 
		ifTrue: [self testObject]
		ifFalse: [self testData].
	s := self indent, item name, ': ', self valueAsString.
	SwaLint ifColorizeResult: [s := self applyColorRule: s].
	^ s