private
allMethodsUsedIn: aSLClassTestObject
	"Approximate. May also answer some literals, that are not methods"

	^ aSLClassTestObject methods 
		inject: Set new 
		into: [ :set :method |
			set addAll: method testObject literals;
			yourself]