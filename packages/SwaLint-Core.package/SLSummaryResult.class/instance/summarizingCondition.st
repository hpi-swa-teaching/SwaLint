accessing
summarizingCondition

	^ summarizingCondition ifNil: [
		summarizingCondition := self defaultCondition]