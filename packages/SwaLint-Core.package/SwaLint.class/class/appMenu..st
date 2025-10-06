app - menu
appMenu: menu

	menu
		"add: 'about' target: self action: #showAbout;"
		add: 'options' target: SLPreferenceBrowser action: #open;
		add: 'self-update...' target: self action: #doSelfUpdate;
			balloonTextForLastItem: ('download and install the latest updates for {1}' format: {self appName});
		add: 'send feedback...' target: self action: #sendFeedback.
	
	^ menu