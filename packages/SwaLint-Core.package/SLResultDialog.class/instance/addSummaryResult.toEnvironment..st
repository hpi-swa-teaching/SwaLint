browsing
addSummaryResult: aSLSummaryResult toEnvironment: anEnvironment	
	
	| class |
	class := aSLSummaryResult testObject testObject.
	
	aSLSummaryResult testObject instanceMethods do: [ :method |
		aSLSummaryResult selectForSummary: method ifTrue: [
			anEnvironment 
				addClass: class 
				selector: method methodSelector]].

	aSLSummaryResult testObject classMethods do: [ :method |
		aSLSummaryResult selectForSummary: method ifTrue: [
			anEnvironment 				
				addClass: class class 
				selector: method methodSelector]].