initialization
initialize
	super initialize.
	self initializeInstanceVariables.
	SystemChangeNotifier uniqueInstance 
		notify: self ofSystemChangesOfItem: #class change: #Added using: #update;
		notify: self ofSystemChangesOfItem: #category change: #Added using: #update;
		notify: self ofSystemChangesOfItem: #class change: #Removed using: #update;
		notify: self ofSystemChangesOfItem: #category change: #Removed using: #update;
		notify: self ofSystemChangesOfItem: #class change: #Renamed using: #update;
		notify: self ofSystemChangesOfItem: #category change: #Renamed using: #update;
		notify: self ofSystemChangesOfItem: #class change: #Recategorized using: #update;
		notify: self ofSystemChangesOfItem: #category change: #Recategorized using: #update ;
		notify: self ofSystemChangesOfItem: #test change: #Added using: #update;
		notify: self ofSystemChangesOfItem: #testCategory change: #Added using: #update;
		notify: self ofSystemChangesOfItem: #test change: #Removed using: #update;
		notify: self ofSystemChangesOfItem: #testCategory change: #Removed using: #update;
		notify: self ofSystemChangesOfItem: #test change: #Renamed using: #update;
		notify: self ofSystemChangesOfItem: #testCategory change: #Renamed using: #update;
		notify: self ofSystemChangesOfItem: #test change: #Recategorized using: #update;
		notify: self ofSystemChangesOfItem: #testCategory change: #Recategorized using: #update.