private
searchCloneIn: testLines
	from: testIndex
	comparedWith: compLines
	from: compIndex
	range: range
	ifFound: aBlock

	| minClone |
	minClone := self class MinimumExactCloneSize min: range.
	" The addition avoids comparisons in lines that can never form an exact clone 
	basd on the minimum exact clone size "
	((testIndex + minClone > testLines size) or: 
	[compIndex + minClone> compLines size]) ifTrue: [^ self].
	
	testIndex to: (testLines size min: testIndex + range) - minClone do: [ :testCloneStart |
		compIndex to: (compLines size min: compIndex + range) - minClone do: [ :compCloneStart | 
			| minCloneFound |
			minCloneFound := true.
			0 to: minClone - 1 do: [ :index | minCloneFound := minCloneFound and: 
				[(testLines at: testCloneStart + index) = (compLines at: compCloneStart + index)]].
			minCloneFound ifTrue: [
				| nextIndex nextCompIndex cloneSize |
				cloneSize := minClone.

				[((nextIndex := testCloneStart + cloneSize) <= testLines size and: 
					[(nextCompIndex := compCloneStart + cloneSize) <= compLines size]) and:
					[(testLines at: nextIndex) = (compLines at: nextCompIndex)]]
						whileTrue: [cloneSize := cloneSize + 1].

					aBlock value: (SLCodeCloneInformation new
						cloneSize: cloneSize;
						testCloneStart: testCloneStart;
						compCloneStart: compCloneStart;
						yourself).
					^ self]]].