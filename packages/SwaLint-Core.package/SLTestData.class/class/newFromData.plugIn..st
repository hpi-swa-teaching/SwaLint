instance creation
newFromData: data plugIn: aSLPlugInClass

	^ (self isTestDataObject: data)
		ifTrue: [data copy plugIn: aSLPlugInClass]
		ifFalse: [self newFromArray: data plugin: aSLPlugInClass]