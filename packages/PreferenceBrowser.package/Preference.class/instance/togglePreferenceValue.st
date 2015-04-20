value
togglePreferenceValue
	"Toggle whether the value of the preference. Self must be a boolean preference."
	value := value not.
	self notifyInformeeOfChange