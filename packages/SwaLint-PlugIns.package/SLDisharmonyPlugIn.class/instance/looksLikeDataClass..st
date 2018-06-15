private
looksLikeDataClass: aSLClassTestObject
	"Class reveals many attributes and is not complex"

	^ (((aSLClassTestObject resultOf: #numberOfAccessorMethods:) > #few) and: 
		[(aSLClassTestObject resultOf: #weightedMethodCount:) < #high]
	) or: [
		((aSLClassTestObject resultOf: #numberOfAccessorMethods:) > #many) and:
		[(aSLClassTestObject resultOf: #weightedMethodCount:) < #veryHigh]]