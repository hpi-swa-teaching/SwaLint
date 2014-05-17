running
checkClass: aContext 
	| definesVar class |
	aContext selectedClass isMeta ifTrue: 
		[ class := aContext selectedClass.
		definesVar := false.
		[ definesVar or: [ class isNil or: [ class isMeta not ] ] ] whileFalse: 
			[ definesVar := class instVarNames isEmpty not.
			class := class superclass ].
		(definesVar and: [ (aContext selectedClass includesSelector: #initialize) not ]) ifTrue: [ result addClass: aContext selectedClass ] ]