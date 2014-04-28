submorphs - buttons
newButtonRow
	"Overrides newButtonRow in super class to suit SwaLint needs. 
	Code is ugly, but it is ugly in my superclass, too."
	
	^ BorderedMorph new
		color: Color transparent;
		cellInset: 2;
		layoutInset: 2;
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		listCentering: #topLeft;
		cellPositioning: #topLeft;
		on: #mouseEnter send: #paneTransition: to: self;
		on: #mouseLeave send: #paneTransition: to: self;
		addMorphBack: self defaultButton;
		addMorphBack: self newSeparator;
		addMorphBack: self saveButton;
		addMorphBack: self loadButton;
		addMorphBack: self newSeparator;
		addMorphBack: self saveToDiskButton;
		addMorphBack: self loadFromDiskButton;
		addMorphBack: self newTransparentFiller;
		addMorphBack: self aboutButton;
		yourself