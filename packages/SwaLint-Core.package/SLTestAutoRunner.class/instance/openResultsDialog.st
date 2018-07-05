actions
openResultsDialog

	self environment ifNotNil: [
		self resultDialog: (SLResultDialog onEnvironment: self environment)].