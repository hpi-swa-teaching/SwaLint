smalllint
environmentFor: aTestObjectCollection

	^ (self rbClass: #RBClassEnvironment) new
		classes: (aTestObjectCollection 
			collect: [ :each | each testObject ])