accessing - toolbuilder - test tree objects
testNodeForPath: path
	"See comment in #testNodePathFor:parent:."

	| string |
	string := (path ifNil: [^ nil]) lines last.
	^ (self displayedTestCategories , self displayedTests)
		detect: [:test | test asString = string]
		ifNone: [nil "not yet reloaded"]