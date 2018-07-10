as yet unclassified
unnecessaryAssignmentRuleMethod: aMethodTestObject

	<slTestHidden: true>
	
	| rbMethodNode unusedVariables |

	"Get a list of all variables that are assigned in the method."
	rbMethodNode := RBParser parseMethod: (aMethodTestObject sourceCode).
	unusedVariables := ( RBParseTreeSearcher new
			matches: '`@name := `@something'
		do: [ :node :answer |
				answer add: node variable name.
				answer])
	               executeTree: rbMethodNode initialAnswer: Set new.
	
	"Select only temporary variables from that list"
	unusedVariables := unusedVariables intersection:
		aMethodTestObject testObject tempNames.
	
	"Remove all variables that were used from that list."
	( RBParseTreeSearcher new
			matches: '`{:node | node isAssignment or: [node isMessage or: [node isReturn]]}'
		do: [ :node :answer | | variableNames |
				variableNames := #().
				(node isAssignment or: [node isReturn]) ifTrue: [
					variableNames := node value allChildren collect: [:each |
						each isVariable ifTrue: [each name]]].
				node isMessage ifTrue: [
					variableNames := Set new.
					variableNames addAll: (node receiver allChildren collect: [:each |
						each name]).
					node arguments do: [:argument |
						variableNames addAll: (argument allChildren collect: [:each |
						each name])] ].
				unusedVariables removeAllFoundIn: variableNames])
	               executeTree: rbMethodNode initialAnswer: false.
	
	"If all variables were used, this collection should be empty."
	^self booleanResult: unusedVariables notEmpty
