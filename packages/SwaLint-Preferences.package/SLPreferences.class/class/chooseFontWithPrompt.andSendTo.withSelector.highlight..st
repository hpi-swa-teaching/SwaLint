fonts
chooseFontWithPrompt: aPrompt andSendTo: aReceiver withSelector: aSelector highlight: currentFont
	Smalltalk isMorphic
		ifFalse:
			[TextStyle mvcPromptForFont: aPrompt andSendTo: aReceiver withSelector: aSelector]
		ifTrue:
			[TextStyle promptForFont: aPrompt andSendTo: aReceiver withSelector: aSelector highlight: currentFont]