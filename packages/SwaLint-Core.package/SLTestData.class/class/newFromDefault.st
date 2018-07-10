instance creation
newFromDefault

	^ self new
		name: nil; 
		description: 'no description'; 
		category: nil; 
		method: nil;
		longRuntime: false;
		plugIn: nil