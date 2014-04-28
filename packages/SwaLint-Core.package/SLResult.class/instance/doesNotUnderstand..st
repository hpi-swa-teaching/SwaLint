error handling
doesNotUnderstand: aMessage
	"Re-route message to my value in case I do not understand it"
	
	^ [self result 
			perform: aMessage selector 
			withArguments: aMessage arguments] 
		on: MessageNotUnderstood 
		do: [super doesNotUnderstand: aMessage]