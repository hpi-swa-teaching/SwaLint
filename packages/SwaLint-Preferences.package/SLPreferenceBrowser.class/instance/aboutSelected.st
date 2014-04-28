initialization
aboutSelected

	^ (PopUpMenu labels: ' OK ' translated)
		startUpWithCaption: (SwaLint projectDescription withNoLineLongerThan: 35)
		icon: (Smalltalk at: #SwaLint) projectLogo