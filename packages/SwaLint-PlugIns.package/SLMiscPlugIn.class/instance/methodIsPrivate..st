private
methodIsPrivate: aCompiledMethod
	
	| category selector |
	
	selector :=  aCompiledMethod selector.
	category := aCompiledMethod methodClass categoryForSelector: selector.
	
	^ (selector beginsWith: '_') or: [category includesSubString: 'private']