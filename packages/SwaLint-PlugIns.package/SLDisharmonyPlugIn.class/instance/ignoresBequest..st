private
ignoresBequest: aSLClassTestObject

	^ 	((aSLClassTestObject resultOf: #baseClassOverridingRatio:) result < (1/3)) or:
		((aSLClassTestObject resultOf: #numberOfProtectedMethods:) > #few and:
		[(aSLClassTestObject resultOf: #baseClassUsageRatio:) result < (1/3)])