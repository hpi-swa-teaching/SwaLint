instance creation
newFor: error plugIn: aSLPlugIn

	^ (self newWithValue:
			(SLTestError newFor: error))
		errPlugIn: aSLPlugIn