private
basicAddPlugIn: aSLPlugInClass

	aSLPlugInClass subclasses
		do: [ :subclass | self basicAddPlugIn: subclass]
		displayingProgress: ('Loading ', aSLPlugInClass).
	aSLPlugInClass offeredTests
		do: [ :test | self addTest: test]
		displayingProgress: [ :test | 'Loading Test: ', test name].