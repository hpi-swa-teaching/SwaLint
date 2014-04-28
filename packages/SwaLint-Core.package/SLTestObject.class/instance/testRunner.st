accessing
testRunner

	^ testRunner ifNil: [testRunner := self parent testRunner]