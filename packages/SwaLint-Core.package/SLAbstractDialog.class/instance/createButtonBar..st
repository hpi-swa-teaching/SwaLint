dialogue-components
createButtonBar: aCollection
	"Answer a bar which holds buttons. Add aCollection of buttons to 
	the created buttonBar."
	
	^ (Morph new)
		layoutPolicy: TableLayout new;
		listDirection: #rightToLeft;
 		wrapCentering: #leftToRight;
 		wrapDirection: #topToBottom;
		cellInset: 2;
		addAllMorphs: aCollection;
		yourself