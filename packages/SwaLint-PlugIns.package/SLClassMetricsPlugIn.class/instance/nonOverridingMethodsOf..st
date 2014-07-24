private
nonOverridingMethodsOf: aSLClassTestObject

	| selectors nonOverridingMethods |

	selectors := aSLClassTestObject methods collect: [ :each | each methodSelector ].
	nonOverridingMethods := selectors reject: 
			[ :each | aSLClassTestObject testObject superclass allSelectors includes: each ].

	^ nonOverridingMethods collect: [ :each | aSLClassTestObject methodForSelector: each ]