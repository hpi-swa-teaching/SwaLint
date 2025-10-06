browsing
addSummaryResult: aSLSummaryResult toEnvironment: anEnvironment	 
	
	| class |
	self flag: #todo "update".
	class := aSLSummaryResult testObject testObject.
	
	aSLSummaryResult testObject instanceMethods do: [ :method |
		aSLSummaryResult selectForSummary: method ifTrue: [
			anEnvironment 
				addClass: class 
				selector: method methodSelector]].

	aSLSummaryResult testObject classMethods do: [ :method |
		aSLSummaryResult selectForSummary: method ifTrue: [
			anEnvironment 				
				addClass: class theMetaClass 
				selector: method methodSelector]].