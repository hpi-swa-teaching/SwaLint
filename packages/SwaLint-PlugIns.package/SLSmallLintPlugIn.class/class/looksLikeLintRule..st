as yet unclassified
looksLikeLintRule: klass

	^ ((self namespacePrefix = (klass name first: (self namespacePrefix size)))
		and: [self postfix = (klass name last: (self postfix size))])
		and: [klass isVisible]
