private
computeHITRecursively: aClass
	"Answer the length of the path from the class to its deepest 
	subclass, computed recursively."
	
	^ aClass subclasses 
		inject: 0 
		into: [ :hit :subclass | 
			hit max: (self computeHITRecursively: subclass)+1]