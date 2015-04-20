private
significantDuplicationChain: aSLMethodTestObject with: anotherSLMethodTestObject

	| currentTestIndex currentCompIndex testLines compLines chainLength |
	"pathological case"
	aSLMethodTestObject == anotherSLMethodTestObject ifTrue: [^ false].

	testLines := aSLMethodTestObject normalizedSourceLines.
	compLines := anotherSLMethodTestObject normalizedSourceLines.
	1 to: testLines size do: [ :testIndex | 
		1 to: compLines size do: [ :compIndex |
			currentTestIndex := testIndex.
			currentCompIndex := compIndex.
			chainLength := 0.
			self searchCloneIn: testLines from: currentTestIndex
				comparedWith: compLines from: currentCompIndex range: 0
				ifFound: [:clone | | oldLength |
					oldLength := 0.
					chainLength := chainLength + clone cloneSize.
					[ oldLength = chainLength ] whileFalse: [ 
						" + 1 because else the previous clone would have been longer "
						currentTestIndex := clone testCloneStart + clone cloneSize + 1.
						currentCompIndex := clone compCloneStart + clone cloneSize + 1.
						oldLength := chainLength.
						self searchCloneIn: testLines
							from: currentTestIndex
							comparedWith: compLines
							from: currentCompIndex
							range: self class SmallLineBias
							ifFound: [:nextClone |
								chainLength := chainLength + nextClone cloneSize.
								chainLength > self class MinimumDuplicationChainLength
									ifTrue: [^true]]]]]].
	^ false