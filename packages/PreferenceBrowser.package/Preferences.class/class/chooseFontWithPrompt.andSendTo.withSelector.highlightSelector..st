fonts
chooseFontWithPrompt: aPrompt andSendTo: aReceiver withSelector: aSelector highlightSelector: highlightSelector
	^UIManager default 
			chooseFont: aPrompt 
			for: aReceiver 
			setSelector: aSelector
			getSelector: highlightSelector 