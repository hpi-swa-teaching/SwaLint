accessing
selectedTests

	^ self tests select: [ :test | test isUserSelected]