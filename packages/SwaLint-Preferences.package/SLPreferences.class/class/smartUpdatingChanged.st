reacting to change
smartUpdatingChanged
	"The smartUpdating preference changed. React"

	SystemWindow allSubInstancesDo:
		[:aWindow | aWindow amendSteppingStatus]

	"NOTE: This makes this preference always behave like a global preference, which is problematical"