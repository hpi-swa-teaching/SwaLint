value
togglePreferenceValue
	"Toggle whether the value of the preference. Self must be a boolean preference."
	self preferenceValue: self preferenceValue not.
	self notifyInformeeOfChange