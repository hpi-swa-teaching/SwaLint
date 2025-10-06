add/remove
addPragmaPreference: pragma
	"Note that there will be no accessor method generated because the pragma's method does already govern that."
	
	| preference |
	((pragma keyword beginsWith: #slpreference:) and: [self respondsTo: pragma keyword])
		ifFalse: [
			"no pragma pref to be defined. do nothing"
			^ self].
	self assert: pragma methodClass isMeta.
	
	preference := self
		perform: pragma keyword
		withArguments: pragma arguments.
			
	preference 
		provider: pragma methodClass theNonMetaClass
		getter: pragma method selector 
		setter: pragma method selector asSimpleSetter.
			
	self atomicUpdatePreferences: [ :copyOfDictionaryOfPreferences |
		copyOfDictionaryOfPreferences
			at: preference id
			put: preference].

	^ preference