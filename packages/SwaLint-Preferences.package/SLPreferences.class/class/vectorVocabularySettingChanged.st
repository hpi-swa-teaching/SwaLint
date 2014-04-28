reacting to change
vectorVocabularySettingChanged
	"The current value of the useVectorVocabulary flag has changed; now react.  No senders, but invoked by the Preference object associated with the #useVectorVocabulary preference."

	Smalltalk isMorphic ifTrue:
		[ActiveWorld makeVectorUseConformToPreference]