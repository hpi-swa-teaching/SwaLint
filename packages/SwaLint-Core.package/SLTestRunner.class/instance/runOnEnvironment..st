running
runOnEnvironment: anEnvironment
	"Run tests on the specified environment. Answer a 
	corresponding result environment."
	
	self
		dataFromEnvironment: anEnvironment;
		run.
		
	^ SLResultEnvironment 
		fromTests: self selectedTests 
		andTestObjects: self testObjects