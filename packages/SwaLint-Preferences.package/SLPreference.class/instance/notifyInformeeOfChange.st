change notification
notifyInformeeOfChange
	"If there is a changeInformee, notify her that I have changed value"

	changeInformee ifNotNil: [changeInformee perform: changeSelector]