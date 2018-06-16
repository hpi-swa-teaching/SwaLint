testing
testBaseClassUsageRatio

	| objects tests |
	objects := {SLClassBURFull. SLClassBURTwoThird. SLClassBURHalf. SLClassBUROneThird. SLClassBURZero}
		collect: [ :aClass | aClass as: SLTestObject].
	tests :=  {#baseClassUsageRatio:}.

	testRunner runOnTests: tests andTestObjects: objects.
		
	self assert: 1 equals: ((objects at: 1) resultOf: #baseClassUsageRatio:) result.
	self assert: (2/3) equals: ((objects at: 2) resultOf: #baseClassUsageRatio:) result.
	self assert: 0.5 equals: ((objects at: 3) resultOf: #baseClassUsageRatio:) result.
	self assert: (1/3) equals: ((objects at: 4) resultOf: #baseClassUsageRatio:) result.
	self assert: 0 equals: ((objects at: 5) resultOf: #baseClassUsageRatio:) result.