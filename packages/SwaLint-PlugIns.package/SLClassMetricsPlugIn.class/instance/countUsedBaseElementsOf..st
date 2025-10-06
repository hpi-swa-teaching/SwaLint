private
countUsedBaseElementsOf: aSLClassTestObject

	| baseInstanceMethods baseInstanceVariables |

	baseInstanceMethods := self getBaseClassInstanceMethodsUsedIn: aSLClassTestObject.
	baseInstanceVariables := self getBaseClassInstanceVariablesUsedIn: aSLClassTestObject.

	^ baseInstanceMethods size + baseInstanceVariables size