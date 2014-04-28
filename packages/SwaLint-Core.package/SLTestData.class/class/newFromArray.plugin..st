instance creation
newFromArray: anArray plugin: aSLPlugInClass
	"Create a SLTestData Object from an given array"
	
	^ self 
		newNamed: (anArray at: 1)
		shortDescription: (anArray at: 2 ifAbsent: [nil])
		description: (anArray at: 3 ifAbsent: [nil])
		inCategory: (anArray at: 4 ifAbsent: [nil])
		selector: (anArray at: 5 ifAbsent: [nil])
		plugIn: aSLPlugInClass