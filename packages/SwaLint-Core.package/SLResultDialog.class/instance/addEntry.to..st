private
addEntry: aSLResult to: aDictionary

	self isOrderedByTests
		ifTrue: [
			self addResultDictionaryEntryFor: aDictionary
			at: aSLResult testData symbol
			with: aSLResult
			and: aSLResult testData]
		ifFalse: [self addResultDictionaryEntryFor: aDictionary
			at: aSLResult testObject name
			with: aSLResult
			and: aSLResult testObject]