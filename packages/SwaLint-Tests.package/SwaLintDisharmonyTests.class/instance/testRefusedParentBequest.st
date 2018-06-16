testing
testRefusedParentBequest

	<timeout: 10>
	| objects tests |
	objects := {SLClassRPBFF. SLClassRPBFT. SLClassRPBTF. SLClassRPBTT.}
		collect: [ :aClass | aClass as: SLTestObject].
	tests :=  {#refusedParentBequest:}.

	testRunner runOnTests: tests andTestObjects: objects.
		
	self assert: false equals: ((objects at: 1) resultOf: #refusedParentBequest:) result.
	self assert: false equals: ((objects at: 2) resultOf: #refusedParentBequest:) result.
	self assert: false equals: ((objects at: 3) resultOf: #refusedParentBequest:) result.
	self assert: true equals: ((objects at: 4) resultOf: #refusedParentBequest:) result.