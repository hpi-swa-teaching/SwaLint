browsing
messageListForResults	
	" Message List is a misnomer by the Tool Set. 
	System Navigation calls it Message List.
	ToolSet calls it MessageSet. "

	^ resultsSelected 
		inject: Set new
		into: [:messages :result |
			result isSummary 
				ifTrue: [self addSummaryResult: result toMessageList: messages]
				ifFalse: [self addResult: result toMessageList: messages].
			messages]