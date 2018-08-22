as yet unclassified
method2

	| var |
	var := 'string'.

	{} do: [ :x | var := self concatInMethod: var with: 'string']