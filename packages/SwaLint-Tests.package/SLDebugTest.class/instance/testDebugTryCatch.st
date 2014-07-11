testing
testDebugTryCatch

	SwaLint debugMode: true.	
	self
		should: [SwaLint  try: [self error: 'Bla'] catch: [#aResult]]
		raise: Error.
	
	SwaLint debugMode: false.
	self assert: [SwaLint try: [self error: 'Bla'] catch: [#aResult]] value = #aResult.
	