accessing
normalizedSourceLines
	"Answer source code *lines* without selector, empty lines and blanks condesed"
	
	^ normalizedSourceLines ifNil: [normalizedSourceLines := 
		self normalizedSource lines collect: [:line | 
			(self testSystem propertyAt: #allNormalizedLines: ifAbsentPut: [Dictionary new])
				at: line ifAbsentPut: [SLCodeLine new string: line; yourself]]]
