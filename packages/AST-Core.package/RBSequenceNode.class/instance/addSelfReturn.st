adding nodes
addSelfReturn
	| node |
	self lastIsReturn ifTrue: [^self].
	node := RBReturnNode value: (RBVariableNode named: 'self').
	self addNode: node