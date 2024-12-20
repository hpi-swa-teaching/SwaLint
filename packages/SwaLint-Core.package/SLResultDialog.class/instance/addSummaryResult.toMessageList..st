browsing
addSummaryResult: aSLSummaryResult toMessageList: aSet	

	aSLSummaryResult testObject isSystem ifTrue: [
		^ self addSystemSummaryResult: aSLSummaryResult toMessageList: aSet].
	
	^ self addClassSummaryResult: aSLSummaryResult toMessageList: aSet