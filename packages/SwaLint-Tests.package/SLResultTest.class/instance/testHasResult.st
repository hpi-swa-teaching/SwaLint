tests
testHasResult
	| result |

	result := SLResult newWithValue: 20.
	self assert: true equals: result hasResult .
	
	result := SLResult new.
	self assert: false equals: result hasResult .