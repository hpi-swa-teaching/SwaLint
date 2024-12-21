menus
testTreeKey: aCharacter from: view

	^ aCharacter
		caseOf:
			{[$b] -> [self browseSelectedTestNode].
			[$B] -> [self browseSelectedTestNodeMapper].
			[$i] -> [self inspectSelectedTestNode].
			[$c] -> [self copySelectedTestName]}
		otherwise: [^ false]