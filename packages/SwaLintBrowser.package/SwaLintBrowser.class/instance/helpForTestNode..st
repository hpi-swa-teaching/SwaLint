accessing - toolbuilder
helpForTestNode: node

	node isCategory ifFalse: [^ self labelForTestNode: node].
	
	^ nil