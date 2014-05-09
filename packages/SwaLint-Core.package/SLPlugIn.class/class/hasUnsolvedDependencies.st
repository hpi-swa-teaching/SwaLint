dependencies
hasUnsolvedDependencies
	"Evaluate my dependencies. If one evaluates to 'false' it it meant, 
	that the dependecy is not met"
	
	self dependencies do: [ :aBlock | aBlock value ifFalse: [^ true]].
	^ false