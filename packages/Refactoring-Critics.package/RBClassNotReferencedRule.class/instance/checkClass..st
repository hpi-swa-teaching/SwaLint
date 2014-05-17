running
checkClass: aContext 
	(aContext selectedClass isMeta or: 
		[ aContext selectedClass subclasses isEmpty not or: [ aContext selectedClass includesBehavior: TestCase ] ]) ifFalse: 
		[ | assoc |
		assoc := Smalltalk globals associationAt: aContext selectedClass name.
		((aContext uses: assoc) or: [ aContext uses: aContext selectedClass name ]) ifFalse: 
			[ result
				addClass: aContext selectedClass;
				addClass: aContext selectedClass class ] ]