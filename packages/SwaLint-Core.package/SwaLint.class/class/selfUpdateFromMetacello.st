app - self-updating
selfUpdateFromMetacello

	| metacello project |
	metacello := self metacello.
	project := metacello get.
	project configuration installDependencies.
	metacello load: self basicSelfUpdateMetacelloSpec.