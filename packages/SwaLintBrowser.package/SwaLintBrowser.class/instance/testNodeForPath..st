accessing - toolbuilder - test tree objects
testNodeForPath: path

	| string |
	string := (path ifNil: [^ nil]) lines last.
	^ (self displayedTestCategories , self displayedTests)
		detect: [:test | test asString = string]
		ifNone: [nil "not yet reloaded"]