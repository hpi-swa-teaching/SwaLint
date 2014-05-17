accessing
result
	| environment |
	environment := ParseTreeEnvironment new.
	environment matcher: self rewriteRule.
	environment label: self name.
	self changes do: [ :change |
		(change isKindOf: AddMethodChange)
			ifTrue: [ environment addClass: change changeClass selector: change selector ] ].
	^ environment