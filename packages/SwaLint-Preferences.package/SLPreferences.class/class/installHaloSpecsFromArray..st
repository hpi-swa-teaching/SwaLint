halos
installHaloSpecsFromArray: anArray

	| aColor |
	^ Parameters at: #HaloSpecs put: 
		(anArray collect:
			[:quin |
				aColor := Color.
				quin fourth do: [:sel | aColor := aColor perform: sel].
				HaloSpec new 
					horizontalPlacement: quin second
					verticalPlacement: quin third 
					color: aColor
					iconSymbol: quin fifth
					addHandleSelector: quin first])