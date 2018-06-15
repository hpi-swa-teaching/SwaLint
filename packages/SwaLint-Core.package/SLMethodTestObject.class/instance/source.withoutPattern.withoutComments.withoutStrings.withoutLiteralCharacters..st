private
source: source 
withoutPattern: noPattern
withoutComments: noComments 
withoutStrings: noStrings 
withoutLiteralCharacters: noCharacters
	"
	Take a method source and remove the desired components.
	This probably can be expressed as a state machine-based parser, but this way,
	it is only 3..4 methods.
	"

	^ String streamContents: [:stream | |inString inComment sourceStream bodyStart |
		bodyStart := noPattern ifFalse: [1] ifTrue: [self bodyStartIn: source onError: [^ '']].
		inString := inComment  :=  false.
		sourceStream := ReadStream on: source from: bodyStart to: source size.
		sourceStream do: [:c | |wasInComment wasInString |
			wasInComment := inComment.
			wasInString := inString.

			"skip strings"
			(c = $'  & wasInComment not) 
				ifTrue: [(wasInString and: [sourceStream peek = $']) 
					ifTrue: [noStrings ifTrue: [sourceStream next]]
					ifFalse: [inString := wasInString not]].

			"skip comments"
			(c = $" & wasInString not) 
				ifTrue: [inComment := wasInComment not].

			"skip literal characters, replace with $$"
			(noCharacters and: [c = $$]) 
				ifTrue: [sourceStream next. stream nextPut: $$].

			
			(noComments & wasInComment) | (noStrings & inString) ifFalse: [
				(noComments and: [wasInComment ~~ inComment]) 
					ifFalse: [stream nextPut: c]]]]