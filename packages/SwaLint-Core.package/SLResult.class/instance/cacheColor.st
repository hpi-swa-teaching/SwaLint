initialize-release
cacheColor

	^ color := TextColor color:
		(self colorRule valueWithPossibleArgs: {self content})