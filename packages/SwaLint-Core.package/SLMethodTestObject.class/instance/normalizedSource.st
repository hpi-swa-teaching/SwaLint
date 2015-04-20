accessing
normalizedSource
	"Answer source code without selector, empty lines and blanks condesed"
	
	^ normalizedSource ifNil: [normalizedSource := self buildNormalizedSource]
