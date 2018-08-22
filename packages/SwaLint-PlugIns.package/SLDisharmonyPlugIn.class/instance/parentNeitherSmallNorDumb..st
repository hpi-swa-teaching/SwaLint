private
parentNeitherSmallNorDumb: aSLClassTestObject
"returns false if parent is not selected or is included in basicClasses (see class side)"

	| parent |
	
	(self hasRelevantSuperclass: aSLClassTestObject) 
						ifTrue: [ parent := aSLClassTestObject testClassSuperclass ]
						ifFalse: [ ^ false ].
	parent ifNil: [ ^ false ]
				ifNotNil: [
				^ 
					(((parent resultOf: #classAMW:) > #average) or:
					[ (parent resultOf: #weightedMethodCount:) >= #veryHigh ]) and:
					[ (parent resultOf: #numberOfMethods:) >= #high ] ]