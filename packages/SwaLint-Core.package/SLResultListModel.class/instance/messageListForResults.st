selector environment
messageListForResults	
	" Message List is a misnomer by the Tool Set. 
	System Navigation calls it Message List.
	ToolSet calls it MessageSet. "

	^ self selectedItems 
		inject: Set new
		into: [:messages :result | result hasDetails ifTrue: [
			result isSummary 
				ifTrue: [self addSummaryResult: result toMessageList: messages]
				ifFalse: [self addResult: result toMessageList: messages]].
			messages]