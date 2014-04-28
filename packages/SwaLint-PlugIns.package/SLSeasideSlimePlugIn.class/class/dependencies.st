dependencies
dependencies
	"Answer an array of dependencies of which each is a block. 
	Each block should evaluate to false, if dependency is not met."
	
	^ {[(MCPackage named: 'Seaside-Slime') hasWorkingCopy]}