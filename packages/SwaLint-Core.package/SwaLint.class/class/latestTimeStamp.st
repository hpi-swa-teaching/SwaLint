app - accessing
latestTimeStamp

	| packages |
	packages := PackageInfo allPackages select: [:ea | '*SwaLint*' match: ea name].
	^ CurrentReadOnlySourceFiles cacheDuring:
		[((packages gather: #methods) collect:
			[:method | [TimeStamp fromMethodTimeStamp: method timeStamp] ifError: [TimeStamp new]])
				max]