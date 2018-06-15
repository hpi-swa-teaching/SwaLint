tests
tightClassCohesion: aSLClassTestObject

	<slTestName: 'Tight Class Cohesion [TCC]'
	description: 'Number of method pairs of a class that access similar instance variables.' >

	^ self percentageResult:
		(self cohesion: aSLClassTestObject instanceMethods)