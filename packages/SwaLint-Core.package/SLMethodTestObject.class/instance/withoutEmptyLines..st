private
withoutEmptyLines: aString

	^ String streamContents: [:stream |
		aString linesDo: [:line |
			(line allSatisfy: [:c| c isSeparator])
				ifFalse: [stream nextPutAll: line; cr]]]