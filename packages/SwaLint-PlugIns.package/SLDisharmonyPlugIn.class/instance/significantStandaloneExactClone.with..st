private
significantStandaloneExactClone: aSLMethodTestObject
	with: anotherSLMethodTestObject

	| maxLines testLines compLines |
	"pathological case"
	aSLMethodTestObject == anotherSLMethodTestObject ifTrue: [^ false].

	testLines := aSLMethodTestObject normalizedSourceLines.
	compLines := anotherSLMethodTestObject normalizedSourceLines.
	maxLines := compLines size max: testLines size.
	testLines withIndexDo: 	[ :testLine :testIndex |
		compLines withIndexDo: [ :compLine :compIndex | 
			self
				searchCloneIn: testLines 
				from: testIndex
				comparedWith: compLines 
				from: compIndex 
				range: maxLines
				ifFound: [:clone | 
					clone cloneSize > self class SignificantStandaloneExactCloneSize
						ifTrue: [^ true]]]].
	^ false