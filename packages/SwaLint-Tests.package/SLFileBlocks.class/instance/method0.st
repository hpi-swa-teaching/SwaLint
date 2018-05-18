as yet unclassified
method0
	| foo |
	
	[foo := 1
	self assert: foo = 1] 
		ensure: [ foo = 0 ]