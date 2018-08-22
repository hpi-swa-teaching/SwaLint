instance-creation
onEnvironment: anEnvironment
	
	^ (self onEnvironmentWithoutOpening: anEnvironment)
		open;
		yourself