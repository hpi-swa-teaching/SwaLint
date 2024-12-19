support - misc
addModelItemsToWindowMenu: aMenu
	aMenu addLine.
	aMenu add: 'restore default preference settings' target: self action: #chooseInitialSettings.