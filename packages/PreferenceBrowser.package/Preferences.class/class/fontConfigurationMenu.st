fonts
fontConfigurationMenu
	| aMenu |
	aMenu := MenuMorph new defaultTarget: Preferences.
	aMenu addTitle: 'Standard System Fonts' translated.
	
	aMenu addStayUpIcons.
	
	aMenu add: 'default text font...' translated action: #chooseSystemFont.
	aMenu balloonTextForLastItem: 'Choose the default font to be used for code and  in workspaces, transcripts, etc.' translated.
	aMenu lastItem font: Preferences standardDefaultTextFont.
	
	aMenu add: 'list font...' translated action: #chooseListFont.
	aMenu lastItem font: Preferences standardListFont.
	aMenu balloonTextForLastItem: 'Choose the font to be used in list panes' translated.
	
	aMenu add: 'flaps font...' translated action: #chooseFlapsFont.
	aMenu lastItem font: Preferences standardFlapFont.
	aMenu balloonTextForLastItem: 'Choose the font to be used on textual flap tabs' translated.

	aMenu add: 'eToys font...' translated action: #chooseEToysFont.
	aMenu lastItem font: Preferences standardEToysFont.
	aMenu balloonTextForLastItem: 'Choose the font to be used on eToys environment' translated.

	aMenu add: 'eToys title font...' translated action: #chooseEToysTitleFont.
	aMenu lastItem font: Preferences standardEToysTitleFont.
	aMenu balloonTextForLastItem: 'Choose the font to be used in titles on eToys environment' translated.

	aMenu add: 'halo label font...' translated action: #chooseHaloLabelFont.
	aMenu lastItem font: Preferences standardHaloLabelFont.
	aMenu balloonTextForLastItem: 'Choose the font to be used on labels ih halo' translated.

	aMenu add: 'menu font...' translated action: #chooseMenuFont.
	aMenu lastItem font: Preferences standardMenuFont.
	aMenu balloonTextForLastItem: 'Choose the font to be used in menus' translated.
	
	aMenu add: 'window-title font...' translated action: #chooseWindowTitleFont.
	aMenu lastItem font: Preferences windowTitleFont.
	aMenu balloonTextForLastItem: 'Choose the font to be used in window titles.' translated.

	aMenu add: 'balloon-help font...' translated action: #chooseBalloonHelpFont.
	aMenu lastItem font: Preferences standardBalloonHelpFont.
	aMenu balloonTextForLastItem: 'choose the font to be used when presenting balloon help.' translated.
	
	aMenu add: 'code font...' translated action: #chooseCodeFont. 
	aMenu lastItem font: Preferences standardCodeFont. 
	aMenu balloonTextForLastItem: 'Choose the font to be used in code panes.' translated.

	aMenu add: 'button font...' translated action: #chooseStandardButtonFont.
	aMenu lastItem font: Preferences standardButtonFont.
	aMenu balloonTextForLastItem: 'Choose the font to be used in buttons.' translated.

	aMenu addLine.
	aMenu add: 'demo mode' translated action: #setDemoFonts.
	aMenu balloonTextForLastItem: 'Set Fonts usable for giving a presentation' translated.

	aMenu addLine.
	aMenu add: 'restore default font choices' translated action: #restoreDefaultFonts.
	aMenu balloonTextForLastItem: 'Use the standard system font defaults' translated.
	
	aMenu add: 'print default font choices' translated action: #printStandardSystemFonts.
	aMenu balloonTextForLastItem: 'Print the standard system font defaults to the Transcript' translated.

	^ aMenu