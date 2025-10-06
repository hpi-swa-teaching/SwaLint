testing
expectedFailures

	| failures |
	failures := super expectedFailures.
	(SystemVersion current majorVersionNumber < 6) ifTrue:
		[failures := failures copyWith: #testLiteralArrayContainsDot "was only added in version 3 of RefactoringBrowser"].
	^ failures