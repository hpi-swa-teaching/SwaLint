instance creation
newFromArray: anArray plugIn: aSLPlugInClass
"For SmallLint Tests only"

	^ self newFromDefault
		symbol: (anArray at: 1);
		name: (anArray at: 2);
		plugIn: aSLPlugInClass;
		category: aSLPlugInClass defaultCategory