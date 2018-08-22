private
methodIsPrivate: aCompiledMethod

	| category selector |
	
	selector :=  aCompiledMethod selector.
	category := aCompiledMethod methodClass whichCategoryIncludesSelector: selector.
	
	^ (selector beginsWith: '_') or: [
	   (selector beginsWith: 'pvt') or: [
	  category includesSubString: 'private']]