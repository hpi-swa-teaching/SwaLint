user interface
enabledButton
	| aButton aLabel |
	aButton := CheckboxButtonMorph checkBox
		target: self preference;
		actionSelector: #togglePreferenceValue;
		state: (self preference preferenceValue);
		yourself.
	aLabel := (StringMorph contents: 'enabled' translated
				font: (StrikeFont familyName: TextStyle defaultFont familyName
							size: TextStyle defaultFont pointSize - 1)).
	^self horizontalPanel
		addMorphBack: aButton;
		addMorphBack: aLabel;
		yourself.