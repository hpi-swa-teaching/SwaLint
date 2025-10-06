get/set
doesNotUnderstand: aMessage
	"Interpret unary message selectors as preference id."
	
	^ aMessage arguments size > 0
		ifTrue: [super doesNotUnderstand: aMessage]
		ifFalse: [
			self
				valueOfPreference: aMessage selector
				ifAbsent: [super doesNotUnderstand: aMessage]]