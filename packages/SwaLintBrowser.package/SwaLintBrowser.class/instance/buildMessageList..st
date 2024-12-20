toolbuilder
buildMessageList: builder

	^ builder pluggableListSpec new
		name: #messageList;
		model: self;
		
		list: #messageLabels;
		getIndex: #selectedMessageIndex;
		setIndex: #selectMessageIndex:;
		helpItem: #messageHelpAt:;
		
		menu: #messageListMenu:shifted:;
		keyPress: #messageListKey:from:;
		
		yourself