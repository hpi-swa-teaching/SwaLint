preparing
preparePlugin: aSLPlugIn

	aSLPlugIn 
		testRunner: self;
		prepareForTests: (self selectedTests select: [ :test | 
			test plugIn = aSLPlugIn class])
		onTestSystem: self testSystem.
