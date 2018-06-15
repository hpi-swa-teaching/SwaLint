tests
testColors

	self assert: (Color black) equals: SLResult black.
	self assert: (Color yellow muchDarker) equals: SLResult yellow.
	self assert: (Color red darker darker) equals: SLResult red.
	self assert: (Color orange darker darker) equals: SLResult orange.
	self assert: (Color green muchDarker) equals: SLResult green.