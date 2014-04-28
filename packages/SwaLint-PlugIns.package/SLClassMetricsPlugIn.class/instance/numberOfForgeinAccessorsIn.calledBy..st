private
numberOfForgeinAccessorsIn: aCollection calledBy: aSLClassTestObject
	"Answer the number of used foreign accessor-method selectors"

	| usedForeigns |
	usedForeigns := self allForeignMethodsUsedIn: aSLClassTestObject.
	^ (aCollection 
		select: [ :method |
			self method: method isAccessorAndAppearsIn: usedForeigns]
		thenCollect: [ :method | 
			method methodSelector]) asSet size