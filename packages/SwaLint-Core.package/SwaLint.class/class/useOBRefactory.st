testing
useOBRefactory

	^ self UseOBRefactoryIfAvailable and: [
		(MCPackage named: 'OB-Refactory') hasWorkingCopy]