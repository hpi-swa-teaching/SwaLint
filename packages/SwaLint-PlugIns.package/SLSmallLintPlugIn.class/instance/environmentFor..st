smalllint
environmentFor: aTestObjectCollection

	^ ((Smalltalk
		at: #ClassEnvironment
		ifAbsent: [Smalltalk at: #RBClassEnvironment]) new)
		classes: (aTestObjectCollection 
			collect: [ :each | each testObject ])