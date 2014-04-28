printing
signalerContext
	"The debugger shouldn't look into the results or test objects"

	^ super signalerContext findContextSuchThat: [ :ctx | 
		((ctx sender receiver isKindOf: SLErrorResult)
			or: [ctx sender receiver isKindOf: SLTestObject]) not]