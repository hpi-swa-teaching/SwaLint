browsing
addClassSummaryResult: aSLSummaryResult toMessageList: aSet	

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
				class: class theMetaClass
				selector: method methodSelector)]].
	
	(aSLSummaryResult testObject variables anySatisfy: [ :variable |
		aSLSummaryResult selectForSummary: variable ])
			ifTrue: [
				aSet add: (MethodReference
					class: class
					selector: #Definition)].