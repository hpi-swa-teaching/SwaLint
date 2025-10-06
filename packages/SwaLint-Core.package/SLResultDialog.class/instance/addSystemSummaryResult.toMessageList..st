browsing
addSystemSummaryResult: aSLSummaryResult toMessageList: aSet	

	aSLSummaryResult testObject allClasses do: [ :each |
		aSLSummaryResult selectForSummary: each ifTrue: [
			aSet add: (MethodReference 
				class: each testObject
				selector: #Definition)]].
	
	aSLSummaryResult testObject categories do: [ :category |
		aSLSummaryResult selectForSummary: category ifTrue: [
			aSet addAll: (category classes collect: [ :each |
				MethodReference 				
					class: each testObject
					selector: #Definition ])]].