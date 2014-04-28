initialize-release
replace: aSLMethodTestObject in: methods
	"Replace existing method test objects"

	| eq |
	eq := [ :any | any testObject = aSLMethodTestObject testObject].
	(methods anySatisfy: eq) ifTrue: [
		methods removeAllSuchThat: eq.
		methods add: aSLMethodTestObject].	