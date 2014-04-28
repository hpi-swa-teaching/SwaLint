instance creation
withModel: aModel  withList: aList  withMessage: aSelector 
	^super new 
		model: aModel
		list: aList
		message: aSelector
		selection: Dictionary new