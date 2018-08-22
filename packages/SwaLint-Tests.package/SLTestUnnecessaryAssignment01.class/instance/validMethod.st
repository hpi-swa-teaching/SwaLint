as yet unclassified
validMethod

	| var1 var2 var3 var4 |
	var1 := 1.
	var2 := 2 + 1.
	var3 := 3.
	var4 := 4.
	self doSomethingWith: var2.
	self doSomethingInABlockClosureWith: [var3].
	var4 sinh.
	instanceVar := 1.
	^ var1 + 2