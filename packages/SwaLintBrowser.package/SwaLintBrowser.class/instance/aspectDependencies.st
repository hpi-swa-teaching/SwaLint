updating
aspectDependencies

	| pragmaDependencies |
	pragmaDependencies := (Pragma allNamed: #uses: from: self class to: thisContext methodClass)
		collect: [:pragma | pragma selector -> (pragma argumentAt: 1)]
		as: Dictionary.
	
	^ pragmaDependencies
		"Model"
		at: #windowTitle put: #(#labelString);
		"CodeHolder"
		at: #contents put: #(selectedMessage);
		yourself