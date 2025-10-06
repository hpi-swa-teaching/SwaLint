accessing - toolbuilder
selectMessageIndex: anInteger

	self selectMessageNamed: (anInteger = 0 ifFalse: [self messages at: anInteger]).