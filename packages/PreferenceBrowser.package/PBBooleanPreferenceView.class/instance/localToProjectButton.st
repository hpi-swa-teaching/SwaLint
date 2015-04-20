user interface
localToProjectButton
	| aButton aLabel |
	aButton := CheckboxButtonMorph checkBox
		target: self preference;
		actionSelector: #toggleProjectLocalness;
		state: (self preference localToProject);
		yourself.
	aLabel := (StringMorph contents: 'local' translated
				font: (StrikeFont familyName: TextStyle defaultFont familyName
							size: TextStyle defaultFont pointSize - 1)).		
	^self horizontalPanel
		addMorphBack: aButton;
		addMorphBack: aLabel;
		yourself.