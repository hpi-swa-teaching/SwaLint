tests
tightClassCohesion: aSLClassTestObject
	"TCC is the relative number of method pairs of a class that 
	access at least one common attribute of that class"

	^ self percentageResult:
		(self cohesion: aSLClassTestObject instanceMethods)