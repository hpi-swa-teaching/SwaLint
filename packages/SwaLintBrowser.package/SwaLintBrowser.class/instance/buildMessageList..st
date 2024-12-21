toolbuilder
buildMessageList: builder

	^ builder pluggableListSpec new
		name: #messageList;
		model: self;
		
		list: #messageLabels;
		getIndex: #selectedMessageIndex;
		setIndex: #selectMessageIndex:;
		helpItem: #helpForMessageAt:;
		
		menu: #messageListMenu:shifted:;
		keyPress: #messageListKey:from:;
		
		yourself