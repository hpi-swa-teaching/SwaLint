testing
useOBRefactory

	^ SLPreferences UseOBRefactoryIfAvailable and: [
		(MCPackage named: 'OB-Refactory') hasWorkingCopy]