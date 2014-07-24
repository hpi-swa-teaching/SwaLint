private
lineIn: testLines at: index equals: compLines at: compIndex
	
	((index > testLines size) or: [compIndex > compLines size])
		ifTrue: [ ^false ].
	^ ((testLines at: index) = (compLines at: compIndex))