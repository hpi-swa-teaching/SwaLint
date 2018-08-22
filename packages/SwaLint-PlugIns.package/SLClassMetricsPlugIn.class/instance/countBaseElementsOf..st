private
countBaseElementsOf: aSLClassTestObject

	| instanceMethods superInstanceMethods |

	instanceMethods := aSLClassTestObject instanceMethods
		collect: [ :each | each methodSelector ].
	superInstanceMethods := aSLClassTestObject superInstanceMethods
		collect: [ :each | each methodSelector ].

	^ (instanceMethods union: superInstanceMethods) size +
		(aSLClassTestObject instanceVariables) size +
		(aSLClassTestObject superInstanceVariables) size