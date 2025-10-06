updating-private
pragmaAspectDependencies

	^ (Pragma allNamed: #uses: from: self class to: thisContext methodClass)
		collect: [:pragma |
			| uses |
			uses := pragma argumentAt: 1.
			uses isSymbol ifTrue: [uses := {uses}].
			pragma selector -> uses]
		as: Dictionary