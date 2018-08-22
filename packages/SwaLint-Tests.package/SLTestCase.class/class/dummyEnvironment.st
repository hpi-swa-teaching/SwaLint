testing
dummyEnvironment
	
	^ DummyEnvironment ifNil: [ DummyEnvironment := SLDefaultEnvironment new ]