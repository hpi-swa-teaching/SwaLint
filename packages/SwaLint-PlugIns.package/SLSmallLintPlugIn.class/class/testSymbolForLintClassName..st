accessing
testSymbolForLintClassName: aClassName

	^ (aClassName 
		copyFrom: self namespacePrefix size + 1
		to: aClassName size - self postfix size)
			asSymbol
		