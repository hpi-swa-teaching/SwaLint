self-updating
installDependencies
	"Install most important dependencies. Metacello>>#get is not recursive."

	Metacello new
		configuration: 'RefactoringBrowser';
		version: '3.2';
		get;
		load: #('Core').