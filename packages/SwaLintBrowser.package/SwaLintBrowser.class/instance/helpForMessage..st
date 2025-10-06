accessing - toolbuilder
helpForMessage: message

	| help |
	help := [self basicHelpForMessage: message] ifError: [nil].
	
	(self isMessageOutOfSync: message) ifTrue:
		[help := '<i>This method has been changed after running the rests. You can press the <b>Run</b> button to update the results.</i>' asTextFromHtml ,
			(help isEmptyOrNil ifTrue: [''] ifFalse: [String cr , String cr , help])].
	^ help