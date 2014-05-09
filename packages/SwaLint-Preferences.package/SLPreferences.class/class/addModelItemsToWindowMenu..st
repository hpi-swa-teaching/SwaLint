misc
addModelItemsToWindowMenu: aMenu
	aMenu addLine.
	aMenu add: 'restore default preference settings' target: self action: #chooseInitialSettings.
	aMenu add: 'restore default text highlighting' target: self action: #initializeTextHighlightingParameters