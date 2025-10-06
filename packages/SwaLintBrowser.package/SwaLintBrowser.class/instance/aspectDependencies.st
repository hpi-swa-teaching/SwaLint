updating
aspectDependencies

	^ Dictionary new
		"Model"
		at: #windowTitle put: #(#labelString);
		"CodeHolder"
		at: #contents put: #(selectedMessage);
		yourself