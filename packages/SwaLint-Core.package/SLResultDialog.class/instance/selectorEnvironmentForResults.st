browsing
selectorEnvironmentForResults	
	
	| environment selectedTests |
	environment :=(Smalltalk
		at: #SelectorEnvironment
		ifAbsent: [Smalltalk at: #RBSelectorEnvironment]) new.
	selectedTests := Set new.
	
	resultsSelected do: [ :result |
		result hasDetails ifTrue: [
			result isSummary 
				ifTrue: [self addSummaryResult: result toEnvironment: environment]
				ifFalse: [self addResult: result toEnvironment: environment]. 
			selectedTests add: result testData]].
	
	environment label: ((self resultDialogLabelFor: selectedTests), ' (', self environment timeString, ')').
	^ environment