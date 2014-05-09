instance creation
newWithValue: aValue andThreshold: aThreshold of: thresholdList

	^ (self newWithValue: aValue)
			threshold: aThreshold;
			thresholds: thresholdList;
			yourself