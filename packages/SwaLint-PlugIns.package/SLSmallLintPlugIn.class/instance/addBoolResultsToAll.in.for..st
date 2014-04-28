private
addBoolResultsToAll: aMethodTOCollection in: selectors for: aTest

	aMethodTOCollection do: [ :method | 
		method addResult: 
			(self booleanResult:
				(selectors includes: method methodSelector)) 
					hideAlways
		for: aTest].