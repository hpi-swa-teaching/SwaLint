preferences panel
initializePreferencePanel: aPanel in: aPasteUpMorph
	"Initialize the given Preferences panel. in the given pasteup, which is the top-level panel installed in the container window.  Also used to reset it after some change requires reformulation"

	| tabbedPalette controlPage aColor aFont maxEntriesPerCategory tabsMorph anExtent  prefObjects cc |
	aPasteUpMorph removeAllMorphs.

	aFont := StrikeFont familyName: 'NewYork' size: 19.

	aColor := aPanel defaultBackgroundColor.
	tabbedPalette := TabbedPalette newSticky.
	tabbedPalette dropEnabled: false.
	(tabsMorph := tabbedPalette tabsMorph) color: aColor darker;
		 highlightColor: Color red regularColor: Color brown darker darker.
	tabbedPalette on: #mouseDown send: #yourself to: #().
	maxEntriesPerCategory := 0.
	self listOfCategories do: 
		[:aCat | 
			controlPage := AlignmentMorph newColumn beSticky color: aColor.
			controlPage on: #mouseDown send: #yourself to: #().
			controlPage dropEnabled: false.
			cc := Color transparent.
			controlPage color: cc.
			controlPage borderColor: aColor;
				 layoutInset: 4.
			(prefObjects := self preferenceObjectsInCategory: aCat) do:
				[:aPreference | | button |
					button := aPreference representativeButtonWithColor: cc inPanel: aPanel.
					button ifNotNil: [controlPage addMorphBack: button]].
			controlPage setNameTo: aCat asString.
			aCat = #?
				ifTrue:	[aPanel addHelpItemsTo: controlPage].
			tabbedPalette addTabFor: controlPage font: aFont.
			aCat = 'search results' ifTrue:
				[(tabbedPalette tabNamed: aCat) setBalloonText:
					'Use the ? category to find preferences by keyword; the results of your search will show up here'].
		maxEntriesPerCategory := maxEntriesPerCategory max: prefObjects size].
	tabbedPalette selectTabNamed: '?'.
	tabsMorph rowsNoWiderThan: aPasteUpMorph width.
	aPasteUpMorph on: #mouseDown send: #yourself to: #().
	anExtent := aPasteUpMorph width @ (490 max: (25 + tabsMorph height + (20 * maxEntriesPerCategory))).
	aPasteUpMorph extent: anExtent.
	aPasteUpMorph color: aColor.
	aPasteUpMorph 	 addMorphBack: tabbedPalette.