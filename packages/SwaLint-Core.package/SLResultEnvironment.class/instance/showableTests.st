accessing
showableTests

	^ self originalTests select: [ :each | each showInResultDialog ]