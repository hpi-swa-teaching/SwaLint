private
allForeignMethodsUsedIn: aSLClassTestObject

	| own all |
	all := self allMethodsUsedIn: aSLClassTestObject.
	own := self ownMethodSelectorsOf: aSLClassTestObject.
	all removeAllFoundIn: own.
	^ all