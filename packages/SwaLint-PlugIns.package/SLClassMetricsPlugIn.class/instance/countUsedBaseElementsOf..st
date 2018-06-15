private
countUsedBaseElementsOf: aSLClassTestObject

	| baseInstanceMethods baseInstanceVariables |

	baseInstanceMethods := self getBaseClassInstanceMethodsUsedIn: aSLClassTestObject.
	baseInstanceVariables := self getBaseClassInstanceVaribalesUsedIn: aSLClassTestObject.

	^ baseInstanceMethods size + baseInstanceVariables size