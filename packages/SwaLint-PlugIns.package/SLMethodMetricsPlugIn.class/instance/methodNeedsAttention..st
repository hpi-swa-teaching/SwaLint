tests
methodNeedsAttention: aSLMethodTestObject

	<slTestName: 'Method needs Attention'
	description: 'This method needs attention because it might have debugging leftovers or other messages that should not be send in usual cases.'>
	
	^ (self booleanResult: (self attentionIsNeeded: aSLMethodTestObject)) showOnlyIfTrue 