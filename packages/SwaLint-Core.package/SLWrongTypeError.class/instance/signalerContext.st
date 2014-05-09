printing
signalerContext
	"The debugger shouldn't look into the test objects"
	
	^ super signalerContext findContextSuchThat: [ :ctx | 
		(ctx sender receiver isKindOf: SLTestObject) not]