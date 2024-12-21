actions
copySelectedTestName

	Clipboard clipboardText: (self selectedTestNode ifNil: [^ self changed: #flash]) title.