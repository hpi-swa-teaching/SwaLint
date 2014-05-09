results
namespaceDictResult: aDictionary
	"Reverse the dicionary and make namespace names as long as possible"
	
	| result ns |
	result := Dictionary new.
	aDictionary values 
		select: [ :classes | classes size > 2] 
		thenDo: [ :classes |		
			ns := self commonStartOf: classes.
			classes do: [ :each | result at: each put: ns]].
	^ self result: result