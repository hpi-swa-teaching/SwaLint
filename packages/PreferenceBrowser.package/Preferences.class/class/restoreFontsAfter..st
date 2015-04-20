fonts
restoreFontsAfter: aBlock

	"Restore the currently chosen set of standard fonts after 
	evaluating aBlock. Used for tests that modify the default fonts."

	| standardDefaultTextFont standardListFont standardEToysFont standardMenuFont 
	windowTitleFont standardBalloonHelpFont standardCodeFont standardButtonFont |

	standardDefaultTextFont := Preferences standardDefaultTextFont.
	standardListFont := Preferences standardListFont.
	standardEToysFont := Preferences standardEToysFont.
	standardMenuFont := Preferences standardMenuFont.
	windowTitleFont := Preferences windowTitleFont.
	standardBalloonHelpFont := Preferences standardBalloonHelpFont.
	standardCodeFont := Preferences standardCodeFont.
	standardButtonFont := Preferences standardButtonFont.
	^aBlock ensure: [
		Preferences setSystemFontTo: standardDefaultTextFont.
		Preferences setListFontTo: standardListFont.
		Preferences setEToysFontTo: standardEToysFont.
		Preferences setMenuFontTo: standardMenuFont.
		Preferences setWindowTitleFontTo: windowTitleFont.
		Preferences setBalloonHelpFontTo: standardBalloonHelpFont.
		Preferences setCodeFontTo: standardCodeFont.
		Preferences setButtonFontTo: standardButtonFont.
	].
