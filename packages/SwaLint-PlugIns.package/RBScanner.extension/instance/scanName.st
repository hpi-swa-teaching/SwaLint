*SwaLint-PlugIns
scanName
	[characterType = #alphabetic or: [characterType = #digit or: [currentCharacter = $_]]] whileTrue: 
			[buffer nextPut: currentCharacter.
			self step]