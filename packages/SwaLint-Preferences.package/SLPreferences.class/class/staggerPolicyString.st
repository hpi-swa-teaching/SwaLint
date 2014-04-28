misc
staggerPolicyString
	"Answer the string to be shown in a menu to represent the 
	stagger-policy status"
	^ ((self valueOfFlag: #reverseWindowStagger)
		ifTrue: ['<yes>']
		ifFalse: ['<no>']), 'stagger windows' translated