private
excessiveInterfaceIncrease: aSLClassTestObject

	^ ((aSLClassTestObject resultOf: #classNAS:) >= #average) and:
		[ (aSLClassTestObject resultOf: #classPNAS:) >= (2/3) ]