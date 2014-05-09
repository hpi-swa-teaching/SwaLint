initialize-release
prepareForTests: aTestCollection onTestObjects: aTestObjectCollection

	aTestCollection do: [ :test |
		self smallLintTest: test onTestObjects: aTestObjectCollection].