list ordering
flattenCategorizedList: aCollection
	"Assume that aCollection contains category -> aContentCollection
	associations and merge all contents together"
	
	^ aCollection  
		inject: OrderedCollection new
		into: [ :collection :each |
			collection 
				addAll: each value;
				yourself]