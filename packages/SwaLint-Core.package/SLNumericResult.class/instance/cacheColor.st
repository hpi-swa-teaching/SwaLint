displaying
cacheColor

	^ color := TextColor color:
		(self colorRule valueWithPossibleArgs: {self result. self thresholdSymbol})