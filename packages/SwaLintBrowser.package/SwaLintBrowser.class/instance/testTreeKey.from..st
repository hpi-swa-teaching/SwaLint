menus
testTreeKey: aCharacter from: view

	self currentEvent anyModifierKeyPressed ifFalse: [^ false].
	
	^ aCharacter
		caseOf:
			{[$b] -> [self browseSelectedTestNode].
			[$B] -> [self browseSelectedTestNodeMapper].
			[$i] -> [self inspectSelectedTestNode].
			[$c] -> [self copySelectedTestName]}
		otherwise: [^ false]