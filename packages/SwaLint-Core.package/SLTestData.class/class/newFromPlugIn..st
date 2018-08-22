instance creation
newFromPlugIn: aSLPlugInClass

	^ self newFromDefault
			plugIn: aSLPlugInClass;
			category: aSLPlugInClass defaultCategory