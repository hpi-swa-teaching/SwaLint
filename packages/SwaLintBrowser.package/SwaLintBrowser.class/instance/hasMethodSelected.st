testing
hasMethodSelected

	self hasMessageSelected ifFalse: [^ false].
	self selectedMessageName isSymbol ifFalse: [^ false].
	^ (#(Comment Definition Hierarchy) includes: self selectedMessageName) not