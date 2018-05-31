as yet unclassified
pattern1

	| idx |

	[idx <= 10]
		whileTrue:
			[idx := idx + 1].

	"second occurrence in this method to make sure the test only returns 1 hit for every method"
	[idx <= 10]
		whileTrue:
			[idx := idx + 1].