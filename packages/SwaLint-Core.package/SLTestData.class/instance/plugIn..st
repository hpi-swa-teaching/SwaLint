accessing
plugIn: aSLPlugInClass

	(self category isNil and: [aSLPlugInClass notNil]) ifTrue: [
		self category: aSLPlugInClass defaultCategory].
	plugIn := aSLPlugInClass.