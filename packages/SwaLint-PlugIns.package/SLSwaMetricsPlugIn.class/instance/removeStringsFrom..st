private
removeStringsFrom: code

| opening copiedString |

opening := false.
copiedString := ''.

code do: [ :each | 
	(opening = false) ifTrue: [
		(each = '''' asCharacter) ifTrue: [
			opening := true.
			]
		ifFalse: [
			copiedString := copiedString, each.
			]
		]
	ifFalse: [
		(each =  '''' asCharacter) ifTrue: [
			opening := false.
			]
		].
	].
	
	^ copiedString