accessing - toolbuilder
selectClassIndex: anInteger

	self selectClass: (anInteger = 0 ifFalse: [self classes at: anInteger]).