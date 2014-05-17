adding nodes
addTemporariesNamed: aCollection 
	aCollection do: [:each | self addTemporaryNamed: each]