browsing
addSummaryResult: aSLSummaryResult toMessageList: aSet	
	
	| class |
	class := aSLSummaryResult testObject testObject.
	
	aSLSummaryResult testObject instanceMethods do: [ :method |
		aSLSummaryResult selectForSummary: method ifTrue: [
			aSet add: (MethodReference 
				class: class 
				selector: method methodSelector)]].

	aSLSummaryResult testObject classMethods do: [ :method |
		aSLSummaryResult selectForSummary: method ifTrue: [
			aSet add: (MethodReference 				
				class: class class
				selector: method methodSelector)]].