testing
lastIsReturn
	^(#(#ifTrue:ifFalse: #ifFalse:ifTrue:) includes: self selector) and: 
			[arguments first isBlock and: 
					[arguments first body lastIsReturn
						and: [arguments last isBlock and: [arguments last body lastIsReturn]]]]