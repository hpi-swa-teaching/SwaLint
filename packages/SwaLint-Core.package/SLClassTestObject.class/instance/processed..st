progress displaying
processed: aTest
	"Notify runner that I was processed"
	
	aTest isUserSelected 
		ifTrue: [self testRunner processed: self].