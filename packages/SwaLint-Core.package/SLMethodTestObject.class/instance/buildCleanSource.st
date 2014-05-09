private
buildCleanSource

	^ self withoutEmptyLines: 
		(self
			source: self sourceString 
			withoutPattern: true
			withoutComments: true
			withoutStrings: true
			withoutLiteralCharacters: true) 