*SwaLint-PlugIns
significantDuplicationUnseenMethods

	^ self propertyAt: #significantDuplicationUnseenMethods ifAbsentPut: [self allMethods copy]