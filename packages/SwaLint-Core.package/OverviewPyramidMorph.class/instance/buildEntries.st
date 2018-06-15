positioning
buildEntries

	| i j |
	i := 0.
	j := 2.
	self buildDictionary do: [ :each | 
		self 
			createMorphFor: (self formatSymbol: each) 
			withValue: (self results at: each asSymbol)
			andValForCalc: ((j <= (self buildDictionary size)) 
				ifTrue: [(self results at: (self buildDictionary at: j) asSymbol)]
				ifFalse: [nil]) 
			andOffsetX: (self xOffset)+i Y: (self yOffset)+i 
			addCalculation: ((each = #fanout or: each = #cyclo) not).
		i := i+1.
		j := j+1].