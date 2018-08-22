private
countDotsAfterReturn: methods

	| points n v |
	points := 0.
	n := 0.
	methods do: [ :m |
		v := m resultValueOf: #csMethodHasDotAfterReturn:.
		v ifNotNil: [
			n := n + 1.
			v ifTrue: [points := points+1]]].
	^ (n = 0) ifTrue: [1] ifFalse: [points / n]