tests
testHasResult
	| result |

	result := SLErrorResult new.
	self assert: false equals: result hasResult .