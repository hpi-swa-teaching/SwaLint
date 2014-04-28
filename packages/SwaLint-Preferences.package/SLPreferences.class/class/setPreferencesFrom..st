initialization
setPreferencesFrom: listOfPairs
	"Given a list of <preferenceName, value> pairs, set preference values.  This method is tolerent of the value being supplied either a Boolean or else one of the symbols #true and #false.  Also, a new-value of #noOpinion will result in that 'preference's value not being changed."

	listOfPairs do:
		[:aPair |
			(aPair second == #noOpinion) ifFalse:
				[Preferences setPreference: aPair first toValue: ((aPair second == #true) or: [aPair second == true])]]

"
Preferences setPreferencesFrom: #(( mouseOverForKeyboardFocus false))
Preferences setPreferencesFrom: {{  #mouseOverForKeyboardFocus. true}}
"