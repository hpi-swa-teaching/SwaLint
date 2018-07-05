as yet unclassified
openResultsDialog

	self environment ifNotNil: [
		self resultDialog: (SLResultDialog onEnvironment: self environment)].