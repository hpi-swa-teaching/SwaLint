submorphs - buttons
aboutButton

	^ aboutButton ifNil: [
			aboutButton := self basicButton 
				label: 'about' translated; 
				setBalloonText: 'Click here to learn about the developers of SwaLint' translated;
				action: #aboutSelected;
				yourself]