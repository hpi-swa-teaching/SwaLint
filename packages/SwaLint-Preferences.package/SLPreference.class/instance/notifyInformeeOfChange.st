change notification
notifyInformeeOfChange
	"If there is a changeInformee, notify her that I have changed value"
	
	<hasLiteralTest: #isChangeSelector:>
	"To find this method as sender of all changeSelectors"

	changeInformee ifNotNil: [changeInformee perform: changeSelector]