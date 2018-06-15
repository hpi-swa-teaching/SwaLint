accessing
testSystem

	[^ self classes anyOne parent parent] ifError: [ ^ nil]
