accessing
selectableResults

	| selTests result |
	selTests := self tests selectedItems.
	result := OrderedCollection new.
	self addResultsOf: selTests from: self testSystem to: result.
	^ self classes selectedItems 
		inject: result
		into: [ :list :aClass |
			self addResultsOf: selTests from: aClass andChildrenTo: list].	