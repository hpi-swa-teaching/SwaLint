accessing
allTestObjects

	^ allTestObjects ifNil: [
		allTestObjects := self addAll: self to: Set new]